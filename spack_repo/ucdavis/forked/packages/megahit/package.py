# Copyright 2013-2024 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.cmake import CmakePackage

from spack.package import *


class Megahit(CMakePackage):
    """MEGAHIT: An ultra-fast single-node solution for
    large and complex metagenomics assembly via succinct de Bruijn graph"""

    homepage = "https://github.com/voutcn/megahit"
    url = "https://github.com/voutcn/megahit/archive/v1.1.3.tar.gz"

    license("GPL-3.0-only")

    version("1.2.9", sha256="09026eb07cc4e2d24f58b0a13f7a826ae8bb73da735a47cb1cbe6e4693118852")
    version("1.1.4", sha256="ecd64c8bfa516ef6b19f9b2961ede281ec814db836f1a91953c213c944e1575f")
    version("1.1.3", sha256="b6eefdee075aaf7a8f9090e2e8b08b770caff90aa43a255e0e220d82ce71c492")

    depends_on("c", type="build")  # generated
    depends_on("cxx", type="build")  # generated

    depends_on("python @3:")
    depends_on("zlib-api")

    patch("python3.patch")
    patch("amd.patch", when="target=aarch64:")

    def cmake_args(self):
        return ["-DCMAKE_BUILD_TYPE=Release"]
