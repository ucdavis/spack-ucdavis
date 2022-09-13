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
#     spack install r-sdmtune
#
# You can edit this file again by typing:
#
#     spack edit r-sdmtune
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack import *


class RSdmtune(RPackage):

    """User-friendly framework that enables the training and the
    evaluation of species distribution models (SDMs). The package
    implements functions for data driven variable selection and model
    tuning and includes numerous utilities to display the results. All
    the functions used to select variables or to tune model
    hyperparameters have an interactive real-time chart displayed in
    the 'RStudio' viewer pane during their execution."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://cran.r-project.org/web/packages/SDMtune/index.html"
    cran     = "SDMtune"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ['github_user1', 'github_user2']

    version('1.1.5', sha256='5cf6798499b6a399a65aac0565e53ae7f71297b19acbf98f3c76fb795ea8ddd9')

    # FIXME: Add dependencies if required.
    # depends_on('r-foo', type=('build', 'run'))
    #depends_on('', type=('build', 'run'))
    depends_on('r-maxnet', type=('build', 'run'))
    depends_on('r-whisker', type=('build', 'run'))
    depends_on('r-stringr', type=('build', 'run'))
    depends_on('r-rstudioapi', type=('build', 'run'))
    depends_on('r-rlang', type=('build', 'run'))
    depends_on('r-rcpp', type=('build', 'run'))
    depends_on('r-raster', type=('build', 'run'))
    depends_on('r-randomforest', type=('build', 'run'))
    depends_on('r-progress', type=('build', 'run'))
    depends_on('r-nnet', type=('build', 'run'))
    depends_on('r-jsonlite', type=('build', 'run'))
    depends_on('r-ggplot2', type=('build', 'run'))
    depends_on('r-gbm', type=('build', 'run'))
    depends_on('r-dismo', type=('build', 'run'))

    def configure_args(self):
        # FIXME: Add arguments to pass to install via --configure-args
        # FIXME: If not needed delete this function
        args = []
        return args
