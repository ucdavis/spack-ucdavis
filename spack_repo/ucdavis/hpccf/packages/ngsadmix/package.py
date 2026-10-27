# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.generic import Package
from spack.package import *


class Ngsadmix(Package):
    """Inferring admixture proportions from NGS data."""

    homepage = "http://www.popgen.dk/software/index.php/NgsAdmix"
    git = "https://github.com/aalbrechtsen/NGSadmix.git"

    maintainers("camillescott")

    version("2018-03-19", commit="a5cde0502ac1e1cfce994bc9fd72ef1813c262b6")

    depends_on("cxx", type="build")
    depends_on("zlib-api")

    def install(self, spec, prefix):
        cxx = Executable(spack_cxx)
        cxx("NGSadmix.cpp", "-lpthread", "-lz", "-o", "NGSadmix")

        mkdirp(prefix.bin)
        install("NGSadmix", prefix.bin)
