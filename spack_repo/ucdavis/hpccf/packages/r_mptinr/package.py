# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage

from spack.package import *


class RMptinr(RPackage):
    """Provides a user-friendly way for the analysis of multinomial processing tree (MPT) models (e.g., Riefer, D. M., and Batchelder, W. H. [1988]. Multinomial modeling and the measurement of cognitive processes. Psychological Review, 95, 318-339) for single and multiple datasets. The main functions perform model fitting and model selection. Model selection can be done using AIC, BIC, or the Fisher Information Approximation (FIA) a measure based on the Minimum Description Length (MDL) framework. The model and restrictions can be specified in external files or within an R script in an intuitive syntax or using the context-free language for MPTs. The 'classical' .EQN file format for model files is also supported. Besides MPTs, this package can fit a wide variety of other cognitive models such as SDT models (see fit.model). It also supports multicore fitting and FIA calculation (using the snowfall package), can generate or bootstrap data for simulations, and plot predicted versus observed data."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://cran.r-project.org/web/packages/MPTinR/index.html"
    cran = "MPTinR"

    version("1.14.1", sha256="e07a3daa74bcc67e565db1d85c88b7260a8ab09eb22bd700766d8f1a67d9dc4b")

    depends_on("r@4:", type=("build", "run"))
    depends_on("r-numderiv", type=("build", "run"))
    depends_on("r-brobdingnag", type=("build", "run"))
    depends_on("r-rcpp", type=("build", "run"))
    depends_on("r-rcppeigen", type=("build", "run"))


