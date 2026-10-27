# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RPlyranges(RPackage):
    """A dplyr-like interface for interacting with the common Bioconductor classes Ranges and GenomicRanges. By providing a grammatical and consistent way of manipulating these classes their accessiblity for new Bioconductor users is hopefully increased."""

    homepage = "https://bioconductor.org/packages/release/bioc/html/plyranges.html"
    # pinned to Bioconductor 3.16; packages/release/ URLs stop working after each release
    url = "https://bioconductor.org/packages/3.16/bioc/src/contrib/plyranges_1.18.0.tar.gz"
    bioc = "plyranges"

    version("1.18.0", sha256="9b32885a1821d1143e2f966edef965810edb4626b30b4901d2288523791ee453")

    depends_on("r-biocgenerics", type=("build", "run"))
    depends_on("r-iranges", type=("build", "run"))
    depends_on("r-genomicranges", type=("build", "run"))
    depends_on("r-dplyr", type=("build", "run"))
    depends_on("r-rlang", type=("build", "run"))
    depends_on("r-magrittr", type=("build", "run"))
    depends_on("r-tidyselect", type=("build", "run"))
    depends_on("r-rtracklayer", type=("build", "run"))
    depends_on("r-genomicalignments", type=("build", "run"))
    depends_on("r-genomeinfodb", type=("build", "run"))
    depends_on("r-rsamtools", type=("build", "run"))
    depends_on("r-s4vectors", type=("build", "run"))
