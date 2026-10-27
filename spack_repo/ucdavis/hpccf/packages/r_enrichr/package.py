# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class REnrichr(RPackage):
    """Provides an R interface to all 'Enrichr' databases. 'Enrichr' is a web-based tool for analysing gene sets and returns any enrichment of common annotated biological features. Quoting from their website 'Enrichment analysis is a computational method for inferring knowledge about an input gene set by comparing it to annotated gene sets representing prior biological knowledge.' See <https://maayanlab.cloud/Enrichr/> for further details."""

    homepage = "https://maayanlab.cloud/Enrichr/"
    cran = "enrichR"

    version("3.1", sha256="2986ec1cef7c62af08ada5f476ccab806c8891110754ef44ad3b5f94c695a729")

    depends_on("r-httr", type=("build", "run"))
    depends_on("r-curl", type=("build", "run"))
    depends_on("r-rjson", type=("build", "run"))
    depends_on("r-ggplot2", type=("build", "run"))
