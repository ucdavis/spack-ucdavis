# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RBayestestr(RPackage):
    """Provides utilities to describe posterior distributions and Bayesian models. It includes point-estimates such as Maximum A Posteriori (MAP), measures of dispersion (Highest Density Interval - HDI; Kruschke, 2015 <doi:10.1016/C2012-0-00477-2>) and indices used for null-hypothesis testing (such as ROPE percentage, pd and Bayes factors)."""

    homepage = "https://cran.r-project.org/web/packages/bayestestR/index.html"
    cran = "bayestestR"

    version("0.13.0", sha256="206905f5e9ac82c9a6d1c41008713d952b71f8fbeee7a732c975518c50fda1a4")

    depends_on("r-insight", type=("build", "run"))
    depends_on("r-datawizard", type=("build", "run"))
