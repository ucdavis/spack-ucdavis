# Copyright 2013-2024 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.makefile import MakefilePackage
from spack.package import *


class Flash2(MakefilePackage):
    """FLASH (Fast Length Adjustment of SHort reads) is an accurate and fast tool
    to merge paired-end reads that were generated from DNA fragments whose
    lengths are shorter than twice the length of reads."""

    homepage = "https://github.com/dstreett/FLASH2"
    url = "https://github.com/dstreett/FLASH2/archive/refs/tags/2.2.00.tar.gz"

    license("GPL-3.0-or-later")

    version("2.2.00", sha256="7bb357a935de87be8a294b35ed281eca2e08afa1e1a1d1b1c24a024b80b713ff")

    depends_on("c", type="build")

    depends_on("zlib-api")

    def install(self, spec, prefix):
        mkdirp(prefix.bin)
        install("flash2", prefix.bin)
