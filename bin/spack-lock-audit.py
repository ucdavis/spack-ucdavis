#!/usr/bin/env python3
"""Audit which compilers a spack.lock uses.

Reports every non-external node whose C/C++/Fortran provider is not gcc, whether that node sits
in a root unification set (link/run closure of a root, where compiler_mixing applies) or only in
a build set, and its link/run dependencies.  Then lists packages that appear with more than one
hash for the same version and compiler (duplicate builds).

Usage: spack-lock-audit.py [--keep PKG,...] [--vendor NAME,...] SPACK_LOCK [SPACK_LOCK ...]

  --keep    packages expected on a vendor compiler (default: the MPI stack); anything else is
            flagged with '!!' as a candidate for the gcc-libs list
  --vendor  compiler package names counted as vendor compilers
            (default: nvhpc,intel-oneapi-compilers,intel-oneapi-compilers-classic,aocc,llvm)
"""
import argparse
import collections
import json
import signal
import sys

LANGS = {"c", "cxx", "fortran"}
DEFAULT_KEEP = "openmpi,mpich,ucx,hwloc,pmix,prrte,libevent,yaksa,hdf5,netcdf-c,netcdf-fortran,fftw,openblas"
DEFAULT_VENDOR = "nvhpc,intel-oneapi-compilers,intel-oneapi-compilers-classic,aocc,llvm"


def load(path):
    with open(path) as f:
        data = json.load(f)
    return data["concrete_specs"], [r["hash"] for r in data["roots"]]


def compilers_of(spec):
    out = {}
    for dep in spec.get("dependencies", []):
        for virtual in dep.get("parameters", {}).get("virtuals", []):
            if virtual in LANGS:
                out[virtual] = dep["name"]
    return out


def link_run_edges(spec):
    for dep in spec.get("dependencies", []):
        deptypes = set(dep.get("parameters", {}).get("deptypes", []))
        if deptypes & {"link", "run"}:
            yield dep["hash"], deptypes


def root_sets(specs, roots):
    """hash -> set of root labels whose link/run closure contains it."""
    member = collections.defaultdict(set)
    for root in roots:
        label = "%s@%s" % (specs[root]["name"], specs[root]["version"])
        stack, seen = [root], set()
        while stack:
            h = stack.pop()
            if h in seen:
                continue
            seen.add(h)
            member[h].add(label)
            stack.extend(dh for dh, _ in link_run_edges(specs[h]))
    return member


def audit(path, keep, vendor):
    specs, roots = load(path)
    member = root_sets(specs, roots)
    print("== %s: %d nodes, %d roots" % (path, len(specs), len(roots)))

    rows = []
    for h, spec in specs.items():
        if spec.get("external"):
            continue
        comps = compilers_of(spec)
        if not comps or not (set(comps.values()) & vendor):
            continue
        linkdeps = sorted({specs[dh]["name"] for dh, dt in link_run_edges(spec) if "link" in dt})
        rundeps = sorted({specs[dh]["name"] for dh, dt in link_run_edges(spec) if "run" in dt and "link" not in dt})
        where = "rootset" if member.get(h) else "build-only"
        flag = "  " if spec["name"] in keep else "!!"
        rows.append((flag, spec["name"], str(spec["version"]), ",".join(sorted(set(comps.values()))),
                     "+".join(sorted(comps)), where, linkdeps, rundeps))
    rows.sort(key=lambda r: (r[0] == "  ", r[5], r[1], r[2]))
    print("-- %d non-external nodes on a vendor compiler ('!!' = not in --keep):" % len(rows))
    for flag, name, ver, comp, langs, where, ld, rd in rows:
        print("%s %-22s %-14s %-32s %-13s %-10s link:[%s] run:[%s]"
              % (flag, name, ver, comp, langs, where, " ".join(ld), " ".join(rd)))

    dupes = collections.defaultdict(set)
    for h, spec in specs.items():
        if spec.get("external"):
            continue
        comps = compilers_of(spec)
        key = (spec["name"], str(spec["version"]), ",".join(sorted(set(comps.values()))) or "-")
        dupes[key].add(h[:7])
    multi = {k: v for k, v in dupes.items() if len(v) > 1}
    print("-- %d (package, version, compiler) combinations with more than one hash:" % len(multi))
    for (name, ver, comp), hashes in sorted(multi.items()):
        print("   %-22s %-14s %-32s %s" % (name, ver, comp, " ".join(sorted(hashes))))


def main(argv):
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--keep", default=DEFAULT_KEEP)
    parser.add_argument("--vendor", default=DEFAULT_VENDOR)
    parser.add_argument("locks", nargs="+")
    args = parser.parse_args(argv)
    keep = set(args.keep.split(","))
    vendor = set(args.vendor.split(","))
    for path in args.locks:
        audit(path, keep, vendor)


if __name__ == "__main__":
    signal.signal(signal.SIGPIPE, signal.SIG_DFL)
    main(sys.argv[1:])
