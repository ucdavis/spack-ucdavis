# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

# ----------------------------------------------------------------------------
# If you submit this package back to Spack as a pull request,
# please first remove this boilerplate and all FIXME comments.
#
# This is a template package file for Spack.  We've put "FIXME"
# next to all the things you'll want to change. Once you've handled
# them, you can save this file and test your package like this:
#
#     spack install r-rgreat
#
# You can edit this file again by typing:
#
#     spack edit r-rgreat
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RRgreat(RPackage):
    """GREAT (Genomic Regions Enrichment of Annotations Tool) is a type of functional enrichment analysis directly performed on genomic regions. This package implements the GREAT algorithm (the local GREAT analysis), also it supports directly interacting with the GREAT web service (the online GREAT analysis). Both analysis can be viewed by a Shiny application. rGREAT by default supports more than 600 organisms and a large number of gene set collections, as well as self-provided gene sets and organisms from users. Additionally, it implements a general method for dealing with background regions."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://www.bioconductor.org/packages/release/bioc/html/rGREAT.html"
    url = "https://www.bioconductor.org/packages/release/bioc/src/contrib/rGREAT_2.0.0.tar.gz"
    bioc = "rGREAT"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("2.0.0", sha256="6e4147b4398142cd485b88025b5c208d304b03829983f1eb8510f1edfa2fc39a")

    depends_on("r-genomeinfodb@1.35.1:", type=("build", "run"))

    depends_on("r-genomicranges", type=("build", "run"))
    depends_on("r-iranges", type=("build", "run"))
    depends_on("r-rjson", type=("build", "run"))
    depends_on("r-getoptlong", type=("build", "run"))
    depends_on("r-rcurl", type=("build", "run"))
    depends_on("r-globaloptions", type=("build", "run"))
    depends_on("r-shiny", type=("build", "run"))
    depends_on("r-dt", type=("build", "run"))
    depends_on("r-genomicfeatures", type=("build", "run"))
    depends_on("r-digest", type=("build", "run"))
    depends_on("r-go-db", type=("build", "run"))
    depends_on("r-progress", type=("build", "run"))
    depends_on("r-circlize", type=("build", "run"))
    depends_on("r-annotationdbi", type=("build", "run"))
    depends_on("r-txdb-hsapiens-ucsc-hg19-knowngene", type=("build", "run"))
    depends_on("r-txdb-hsapiens-ucsc-hg38-knowngene", type=("build", "run"))
    depends_on("r-org-hs-eg-db", type=("build", "run"))
    depends_on("r-rcolorbrewer", type=("build", "run"))
    depends_on("r-s4vectors", type=("build", "run"))
    depends_on("r-foreach", type=("build", "run"))
    depends_on("r-doparallel", type=("build", "run"))
    depends_on("r-rcpp", type=("build", "run"))
