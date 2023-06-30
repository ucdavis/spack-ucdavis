# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack.package import *


class RAnnotatr(RPackage):
    """Annotation of Genomic Regions to Genomic Annotations"""

    bioc = "annotatr"

    version("1.22.0", commit="dde0987196966621e3dfe882b228248a3e62d8bc")

    depends_on("r-annotationdbi", type=("build", "run"))
    depends_on("r-annotationhub", type=("build", "run"))
    depends_on("r-dplyr", type=("build", "run"))
    depends_on("r-genomicfeatures", type=("build", "run"))
    depends_on("r-genomicranges", type=("build", "run"))
    depends_on("r-genomeinfodb", type=("build", "run"))
    depends_on("r-ggplot2", type=("build", "run"))
    depends_on("r-iranges", type=("build", "run"))
    depends_on("r-readr", type=("build", "run"))
    depends_on("r-regioner", type=("build", "run"))
    depends_on("r-reshape2", type=("build", "run"))
    depends_on("r-rtracklayer", type=("build", "run"))
    depends_on("r-s4vectors", type=("build", "run"))
