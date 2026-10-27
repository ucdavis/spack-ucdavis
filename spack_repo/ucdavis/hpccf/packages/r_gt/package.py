# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RGt(RPackage):
    """Build display tables from tabular data with an easy-to-use set of functions. With its progressive approach, we can construct display tables with a cohesive set of table parts. Table values can be formatted using any of the included formatting functions. Footnotes and cell styles can be precisely added through a location targeting system. The way in which 'gt' handles things for you means that you don't often have to worry about the fine details."""

    homepage = "https://gt.rstudio.com/, https://github.com/rstudio/gt"
    cran = "gt"

    version("0.7.0", sha256="d855b1a5e3f84080aed767da362ff493e6a32352e91094b9deac39e97bed6903")

    depends_on("r-base64enc", type=("build", "run"))
    depends_on("r-bitops", type=("build", "run"))
    depends_on("r-cli", type=("build", "run"))
    depends_on("r-commonmark", type=("build", "run"))
    depends_on("r-dplyr", type=("build", "run"))
    depends_on("r-fs", type=("build", "run"))
    depends_on("r-ggplot2", type=("build", "run"))
    depends_on("r-glue", type=("build", "run"))
    depends_on("r-htmltools", type=("build", "run"))
    depends_on("r-magrittr", type=("build", "run"))
    depends_on("r-rlang", type=("build", "run"))
    depends_on("r-sass", type=("build", "run"))
    depends_on("r-scales", type=("build", "run"))
    depends_on("r-stringr", type=("build", "run"))
    depends_on("r-tibble", type=("build", "run"))
    depends_on("r-tidyselect", type=("build", "run"))
