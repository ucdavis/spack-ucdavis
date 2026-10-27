# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class REffectsize(RPackage):
    """Provide utilities to work with indices of effect size for a wide variety of models and hypothesis tests (see list of supported models using the function 'insight::supported_models()'), allowing computation of and conversion between indices such as Cohen's d, r, odds, etc. References: Ben-Shachar et al. (2020) <doi:10.21105/joss.02815>."""

    homepage = "https://cran.r-project.org/web/packages/effectsize/index.html"
    cran = "effectsize"

    version("0.8.2", sha256="6ce2b2abb16cf918fd9429e54d6688388ef9b9e543a051da38ad9236efde73c5")

    
    depends_on("r-bayestestr", type=("build", "run"))
    depends_on("r-insight", type=("build", "run"))
    depends_on("r-parameters", type=("build", "run"))
    depends_on("r-performance", type=("build", "run"))
    depends_on("r-datawizard", type=("build", "run"))
