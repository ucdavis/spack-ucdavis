# Copyright 2013-2021 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.cmake import CMakePackage

from spack.package import *


class Bifrost(CMakePackage):
    """Parallel construction, indexing and querying of colored and compacted de Bruijn graphs."""

    homepage = "https://github.com/pmelsted/bifrost"
    url      = "https://github.com/pmelsted/bifrost/archive/refs/tags/v1.0.4.tar.gz"

    version('1.0.4', sha256='94ac84861c36bc3fb9ea7b4a630ce391c79236289e5fab7aa627dc07b286f013')

    variant('MAX_KMER_SIZE', default='32', description='The maximum k-mer size supported')

    depends_on("c", type="build")
    depends_on("cxx", type="build")
    depends_on("cmake@2.8.12:", type="build")
    depends_on("zlib-api")

    # bifrost needs a C++11 compiler: GCC 5.1+ or Clang 3.5+
    conflicts("%gcc@:5.0")
    conflicts("%clang@:3.4")

    def cmake_args(self):
        args = []
        MAX_KMER_SIZE = int(self.spec.variants['MAX_KMER_SIZE'].value)
        args.append('-DMAX_KMER_SIZE={0}'.format(MAX_KMER_SIZE))
        return args
