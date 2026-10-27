# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RLola(RPackage):
    """Provides functions for testing overlap of sets of genomic regions with public and custom region set (genomic ranges) databases. This makes it possible to do automated enrichment analysis for genomic region sets, thus facilitating interpretation of functional genomics and epigenomics data."""

    homepage = "https://bioconductor.org/packages/release/bioc/html/LOLA.html"
    url = "https://bioconductor.org/packages/release/bioc/src/contrib/LOLA_1.28.0.tar.gz"
    bioc = "LOLA"

    version("1.28.0", sha256="2d4d2f5715fee18b08a6b32a76259ba7612cd0a00c0f3cfdaafa302e730bd301")

    depends_on("r-biocgenerics", type=("build", "run"))
    depends_on("r-s4vectors", type=("build", "run"))
    depends_on("r-iranges", type=("build", "run"))
    depends_on("r-genomicranges", type=("build", "run"))
    depends_on("r-data-table", type=("build", "run"))
    depends_on("r-reshape2", type=("build", "run"))
