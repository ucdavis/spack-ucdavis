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
#     spack install r-jtools
#
# You can edit this file again by typing:
#
#     spack edit r-jtools
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack import *


class RJtools(RPackage):
    """jtools: Analysis and Presentation of Social Scientific Data

This is a collection of tools for more efficiently understanding and sharing the results of (primarily) regression analyses. There are also a number of miscellaneous functions for statistical and programming purposes. Support for models produced by the survey and lme4 packages are points of emphasis."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://www.example.com"
    cran     = "jtools"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ['github_user1', 'github_user2']

    version('2.2.0', sha256='0e8062affcac19fee0b3533ac79c9ce71697b1ed87447d8b6001bc46abb44ea9')

    # FIXME: Add dependencies if required.
    depends_on('r-crayon', type=('build', 'run'))
    depends_on('r-generics', type=('build', 'run'))
    depends_on('r-ggplot2', type=('build', 'run'))
    depends_on('r-magrittr', type=('build', 'run'))
    depends_on('r-pkgconfig', type=('build', 'run'))
    depends_on('r-rlang', type=('build', 'run'))
    depends_on('r-tibble', type=('build', 'run'))
    depends_on('r-pander', type=('build', 'run'))

    def configure_args(self):
        # FIXME: Add arguments to pass to install via --configure-args
        # FIXME: If not needed delete this function
        args = []
        return args
