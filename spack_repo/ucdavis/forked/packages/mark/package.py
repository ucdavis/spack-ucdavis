# Copyright Spack Project Developers. See COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

# UC Davis fork of builtin @ v2026.10.0: adds version 3 (mark.64.zip containing the
# mark64-v2 and mark64-v3 binaries; bin/mark points at v3).

import os

from spack_repo.builtin.build_systems.generic import Package

from spack.package import *


class Mark(Package):
    """Program MARK, developed and maintained by Gary White (Colorado State
    University) is the most flexible, widely used application currently
    available for parameter estimation using data from marked individuals.

    You will need to download the package yourself, unzip, rename it
    following the guide in http://www.phidot.org/software/mark/rmark/linux/
    Step(1). Spack will search your current directory for the download file.
    Alternatively, add this file to a mirror so that Spack can find it.
    For instructions on how to set up a mirror, see
    https://spack.readthedocs.io/en/latest/mirrors.html

    Version 3 is the mark.64.zip archive, which is used as downloaded."""

    homepage = "http://www.phidot.org/software/mark/index.html"
    manual_download = True

    version("3", sha256="5ba500f62c947842a825090d4c0f9b922647dd8bcc5eecf5676da862a00fd6bb")
    version(
        "1.0",
        sha256="5422c9444d5fa6b3b22f4a9f2ce41af2072a1a7283f6f9099dc02cc5282696bc",
        expand=False,
    )

    def url_for_version(self, version):
        if version >= Version("3"):
            return "file://{0}/mark.64.zip".format(os.getcwd())
        return "file://{0}/mark".format(os.getcwd())

    def install(self, spec, prefix):
        mkdir(prefix.bin)
        chmod = which("chmod", required=True)

        if spec.satisfies("@3:"):
            for exe in ("mark64-v2", "mark64-v3"):
                install(exe, prefix.bin)
                chmod("+x", join_path(prefix.bin, exe))
            symlink(join_path(prefix.bin, "mark64-v3"), prefix.bin.mark)
        else:
            install("mark", prefix.bin)
            chmod("+x", prefix.bin.mark)
