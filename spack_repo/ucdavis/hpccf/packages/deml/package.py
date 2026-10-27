# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.makefile import MakefilePackage
from spack.package import *


class Deml(MakefilePackage):
    """deML: Maximum likelihood demultiplexing for NGS data"""

    homepage = "https://github.com/grenaud/deML"
    url = "https://github.com/grenaud/deML/archive/refs/tags/v1.1.4.tar.gz"

    version("1.1.4", sha256="adbf9f26f622314619d0c1d1514c2d2e079505770fbf1176c7335130bb8ad9fd")

    # Only compiles on gcc 9.4.X or lower: https://github.com/grenaud/deML/issues/18
    # Note, 9.5.0 fails too
    depends_on('gcc@:9.5.0')
    conflicts("%gcc@9.4.99:", when="@1.1.4", msg="Maximum supported GCC version is 9.4.x")
    
    def install(self, spec, prefix):
        make()

        mkdirp(prefix.bin)
        install("src/deML", prefix.bin)
