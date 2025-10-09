# Copyright 2013-2021 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

# ----------------------------------------------------------------------------
# If you submit this package back to Spack as a pull request,
# please first remove this boilerplate and all FIXME comments.
#
# This is a template package file for Spack.  We've put "FIXME"
# next to all the things you'll want to change. Once you've handled
# them, you can save this file and test your package like this:
#
#     spack install bifrost
#
# You can edit this file again by typing:
#
#     spack edit bifrost
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack import *


class Bifrost(CMakePackage):
    """Parallel construction, indexing and querying of colored and compacted de Bruijn graphs."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://github.com/pmelsted/bifrost"
    url      = "https://github.com/pmelsted/bifrost/archive/refs/tags/v1.0.4.tar.gz"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ['github_user1', 'github_user2']

    version('1.0.4', sha256='94ac84861c36bc3fb9ea7b4a630ce391c79236289e5fab7aa627dc07b286f013')

    variant('MAX_KMER_SIZE', values=int, default=32, description='The maximum k-mer size supported')

    # FIXME: Add dependencies if required.
    # depends_on('foo')
    depends_on('gcc@5.1.0:')
    depends_on('llvm@3.5:')
    depends_on('cmake@2.8.12:', type="build")
    depends_on('zlib')

    def cmake_args(self):
        args = []
        MAX_KMER_SIZE = int(self.spec.variants['MAX_KMER_SIZE'].value)
        args.append('-DMAX_KMER_SIZE={0}'.format(MAX_KMER_SIZE))
        return args
