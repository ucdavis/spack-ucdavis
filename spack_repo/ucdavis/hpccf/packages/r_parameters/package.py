# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RParameters(RPackage):
    """Utilities for processing the parameters of various statistical models. Beyond computing p values, CIs, and other indices for a wide variety of models (see list of supported models using the function 'insight::supported_models()'), this package implements features like bootstrapping or simulating of parameters and models, feature reduction (feature extraction and variable selection) as well as functions to describe data and variable characteristics (e.g. skewness, kurtosis, smoothness or distribution)."""

    homepage = "https://cran.r-project.org/web/packages/parameters/index.html"
    cran = "parameters"

    version("0.20.0", sha256="37d1141baa0fe347bad58dc1d53bbd8802be5b6d99b5d70fc3baa0010916c99b")


    depends_on("r-bayestestr", type=("build", "run"))
    depends_on("r-datawizard", type=("build", "run"))
    depends_on("r-insight@0.18.8:", type=("build", "run"))
