# Copyright 2013-2021 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RSdmtune(RPackage):

    """User-friendly framework that enables the training and the
    evaluation of species distribution models (SDMs). The package
    implements functions for data driven variable selection and model
    tuning and includes numerous utilities to display the results. All
    the functions used to select variables or to tune model
    hyperparameters have an interactive real-time chart displayed in
    the 'RStudio' viewer pane during their execution."""

    homepage = "https://cran.r-project.org/web/packages/SDMtune/index.html"
    cran     = "SDMtune"

    version('1.1.5', sha256='5cf6798499b6a399a65aac0565e53ae7f71297b19acbf98f3c76fb795ea8ddd9')

    #depends_on('', type=('build', 'run'))
    depends_on("cxx", type="build")

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
