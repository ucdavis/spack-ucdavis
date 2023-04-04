# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

import platform

from spack.package import *


class BwaMem2(MakefilePackage):
    """The tool bwa-mem2 is the next version of the bwa-mem algorithm in bwa. 
    It produces alignment identical to bwa and is ~1.3-3.1x faster depending on 
    the use-case, dataset and the running machine."""

    homepage = "https://github.com/bwa-mem2/bwa-mem2"
    url = "https://github.com/bwa-mem2/bwa-mem2/releases/download/v2.2.1/Source_code_including_submodules.tar.gz"

    version("2.2.1", sha256="9b001bdc7666ee3f14f3698b21673714d429af50438b894313b05bc4688b1f6d")

    depends_on("zlib")

    with when("%intel"):
        build_targets = ["CXX=icpc", "multi"]

    def install(self, spec, prefix):
        install("bwa-mem2*", prefix.bin)
