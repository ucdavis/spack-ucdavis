# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RDatawizard(RPackage):
    """A lightweight package to assist in key steps involved in any data analysis workflow: (1) wrangling the raw data to get it in the needed form, (2) applying preprocessing steps and statistical transformations, and (3) compute statistical summaries of data properties and distributions. It is also the data wrangling backend for packages in 'easystats' ecosystem. References: Patil et al. (2022) <doi:10.21105/joss.04684>."""

    homepage = "https://cran.r-project.org/web/packages/datawizard/index.html"
    cran = "datawizard"

    version("0.6.4", sha256="37852d11f8455737924a78033849984bc4519c04e74bb17dcf32d6bf10806347")

    depends_on("r-insight@0.18.7:", type=("build", "run"))
