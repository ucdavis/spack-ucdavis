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
#     spack install r-dofuture
#
# You can edit this file again by typing:
#
#     spack edit r-dofuture
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack import *


class RDofuture(RPackage):

    """Provides a '%dopar%' adapter such that any type of futures can
    be used as backends for the 'foreach' framework."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://github.com/HenrikBengtsson/doFuture"
    cran     = "doFuture"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ['github_user1', 'github_user2']

    version('0.12.1', sha256='d5e8012decb1eea598a3ba498c664f5ce906b6c4adcd5d07ef7cb104a318133a')

    # FIXME: Add dependencies if required.
    # depends_on('r-', type=('build', 'run'))
    depends_on('r-foreach@1.5.0:', type=('build', 'run'))
    depends_on('r-future@1.22.1:', type=('build', 'run'))    

    def configure_args(self):
        # FIXME: Add arguments to pass to install via --configure-args
        # FIXME: If not needed delete this function
        args = []
        return args
