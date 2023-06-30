# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack.package import *


class RDmrseq(RPackage):
    """Detection and inference of differentially methylated regions from Whole Genome Bisulfite Sequencing"""

    bioc = "dmrseq"

    version("1.18.0", commit="3bb8fe6")
    version("1.16.0", commit="b65f67bb2ecf141d9df1b7702806dc449469165b")

    depends_on("r-bsseq", type=("build", "run"))
    depends_on("r-genomicranges", type=("build", "run"))
    depends_on("r-nlme", type=("build", "run"))
    depends_on("r-ggplot2", type=("build", "run"))
    depends_on("r-s4vectors", type=("build", "run"))
    depends_on("r-rcolorbrewer", type=("build", "run"))
    depends_on("r-bumphunter", type=("build", "run"))
    depends_on("r-delayedmatrixstats", type=("build", "run"))
    depends_on("r-matrixstats", type=("build", "run"))
    depends_on("r-biocparallel", type=("build", "run"))
    depends_on("r-outliers", type=("build", "run"))
    depends_on("r-locfit", type=("build", "run"))
    depends_on("r-iranges", type=("build", "run"))
    depends_on("r-annotatr", type=("build", "run"))
    depends_on("r-annotationhub", type=("build", "run"))
    depends_on("r-rtracklayer", type=("build", "run"))
    depends_on("r-genomeinfodb", type=("build", "run"))
