# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack.package import *


class RChipseeker(RPackage):
    """ChIPseeker for ChIP peak Annotation, Comparison, and Visualization"""

    homepage = "https://bioconductor.org/packages/release/bioc/html/ChIPseeker.html"
    url = "https://bioconductor.org/packages/release/bioc/src/contrib/ChIPseeker_1.32.1.tar.gz"
    bioc = "ChIPseeker"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("1.32.1", sha256="8eadcd66bbe60d17e72240a4f1c7b95a9cf11a7cd97df9833d1831ba39094550")

    depends_on("r-annotationdbi", type=("build", "run"))
    depends_on("r-biocgenerics", type=("build", "run"))
    depends_on("r-boot", type=("build", "run"))
    depends_on("r-enrichplot", type=("build", "run"))
    depends_on("r-iranges", type=("build", "run"))
    depends_on("r-genomeinfodb", type=("build", "run"))
    depends_on("r-genomicranges", type=("build", "run"))
    depends_on("r-genomicfeatures", type=("build", "run"))
    depends_on("r-ggplot2", type=("build", "run"))
    depends_on("r-ggvenndiagram", type=("build", "run"))
    depends_on("r-gplots", type=("build", "run"))
    depends_on("r-gtools", type=("build", "run"))
    depends_on("r-plotrix", type=("build", "run"))
    depends_on("r-dplyr", type=("build", "run"))
    depends_on("r-magrittr", type=("build", "run"))
    depends_on("r-rcolorbrewer", type=("build", "run"))
    depends_on("r-rtracklayer", type=("build", "run"))
    depends_on("r-s4vectors", type=("build", "run"))
    depends_on("r-txdb-hsapiens-ucsc-hg19-knowngene", type=("build", "run"))
