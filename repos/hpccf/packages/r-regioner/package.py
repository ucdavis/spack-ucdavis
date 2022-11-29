# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)


from spack.package import *


class RRegioner(RPackage):
    """Association analysis of genomic regions based on permutation tests"""

    homepage = "https://www.bioconductor.org/packages/release/bioc/html/regioneR.html"
    url = "https://www.bioconductor.org/packages/release/bioc/src/contrib/regioneR_1.30.0.tar.gz"
    bioc = "regioneR"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("1.30.0", sha256="89001c6f24ffd23a8badd7f09595cfb973dd1b0e1f2bfdc503b475053ee45605")

    depends_on("r-bsgenome@1.66.1:", type=("build", "run"))
    depends_on("r-genomicranges", type=("build", "run"))
    depends_on("r-memoise", type=("build", "run"))
    depends_on("r-iranges", type=("build", "run"))
    depends_on("r-biostrings", type=("build", "run"))
    depends_on("r-rtracklayer", type=("build", "run"))
    depends_on("r-genomeinfodb", type=("build", "run"))
    depends_on("r-s4vectors", type=("build", "run"))
