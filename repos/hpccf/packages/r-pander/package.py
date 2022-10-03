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
#     spack install r-pander
#
# You can edit this file again by typing:
#
#     spack edit r-pander
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack import *


class RPander(RPackage):
    """pander: An R 'Pandoc' Writer

Contains some functions catching all messages, 'stdout' and other useful information while evaluating R code and other helpers to return user specified text elements (like: header, paragraph, table, image, lists etc.) in 'pandoc' markdown or several type of R objects similarly automatically transformed to markdown format. Also capable of exporting/converting (the resulting) complex 'pandoc' documents to e.g. HTML, 'PDF', 'docx' or 'odt'. This latter reporting feature is supported in brew syntax or with a custom reference class with a smarty caching 'backend'."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://rapporter.github.io/pander/"
    cran     = "pander"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ['github_user1', 'github_user2']

    version('0.6.5', sha256='2add076bd2ca6749715a044e26baf1e0aee5d50211903ee6bfceecc30b9e9f90')

    # FIXME: Add dependencies if required.
    # depends_on('r-foo', type=('build', 'run'))
    depends_on('r-digest', type=('build', 'run'))
    depends_on('r-rcpp', type=('build', 'run'))

    def configure_args(self):
        # FIXME: Add arguments to pass to install via --configure-args
        # FIXME: If not needed delete this function
        args = []
        return args
