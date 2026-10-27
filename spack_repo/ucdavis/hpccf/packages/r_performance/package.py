# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RPerformance(RPackage):
    """Utilities for computing measures to assess model quality, which are not directly provided by R's 'base' or 'stats' packages. These include e.g. measures like r-squared, intraclass correlation coefficient (Nakagawa, Johnson & Schielzeth (2017) <doi:10.1098/rsif.2017.0213>), root mean squared error or functions to check models for overdispersion, singularity or zero-inflation and more. Functions apply to a large variety of regression models, including generalized linear models, mixed effects models and Bayesian models."""

    homepage = "https://easystats.github.io/performance/"
    cran = "performance"

    version("0.10.1", sha256="ff9ee7ddf034bc090501e03412eff3778641ee2e72f5096ac348d1e5ecff5fd4")


    depends_on("r-bayestestr", type=("build", "run"))
    depends_on("r-insight@0.18.8:", type=("build", "run"))
    depends_on("r-datawizard", type=("build", "run"))
