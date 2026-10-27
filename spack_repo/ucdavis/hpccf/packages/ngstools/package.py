# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from shutil import copytree, ignore_patterns

from spack_repo.builtin.build_systems.makefile import MakefilePackage

from spack.package import *


SUBMODULES = [ "ngsSim",
               "ngsPopGen",
               "ngsUtils",
               "ngsDist",
               "ngsLD",
               "ngsF",
               "ngsF-HMM",
              ]


def submodules(package):
    return SUBMODULES


class Ngstools(MakefilePackage):
    """ngsTools is a collection of programs for population genetics 
    analyses from NGS data, taking into account data statistical uncertainty. 
    The methods implemented in these programs do not rely on SNP or genotype 
    calling, and are particularly suitable for low sequencing depth data. 
    An application note illustrating its application has published 
    (Fumagalli et al. 2014)."""

    homepage = "https://github.com/mfumagalli/ngsTools"
    git = "https://github.com/mfumagalli/ngsTools.git"

    maintainers("camillescott")

    version(
        "2024-08-27", commit="b38ea272c9f68822e74efd6bcb3495a08df42181", submodules=submodules
    )
    version(
        "2023-04-05", commit="6505f809ec9384bdbecd1eeaedf9d00ff6033b2c", submodules=submodules
    )

    depends_on("c", type="build")
    depends_on("cxx", type="build")

    depends_on("gsl@1.15:")
    depends_on("bzip2")
    depends_on("zlib-api")
    depends_on("curl")
    depends_on("libdeflate")
    depends_on("xz")
    depends_on("htslib")

    def edit(self, spec, prefix):
        hts_inc = spec["htslib"].prefix.include
        hts_lib = join_path(spec["htslib"].prefix.lib, "libhts.a")

        makefile = FileFilter(join_path("ngsF", "Makefile"))
        makefile.filter(r'^\s*HTS_INCDIR\s*=.*', 'HTS_INCDIR = ' + hts_inc)
        makefile.filter(r'^\s*HTS_LIBDIR\s*=.*', 'HTS_LIBDIR = ' + hts_lib)

    def build(self, spec, prefix):
        for submodule in SUBMODULES:
            with working_dir(submodule):
                make()

    def install(self, spec, prefix):
        mkdirp(prefix.bin)
        for exedir in SUBMODULES:
            copytree(exedir, join_path(prefix.bin, exedir), 
                     ignore=ignore_patterns('*.cpp', '*.hpp', '*.h', 
                                            'htslib', '*.o', 'LICENSE', 
                                            'Makefile', '*.md', 
                                            'shared', 'test'))

    def setup_run_environment(self, env):
        for exedir in SUBMODULES:
            env.prepend_path("PATH", join_path(self.prefix.bin, exedir))
