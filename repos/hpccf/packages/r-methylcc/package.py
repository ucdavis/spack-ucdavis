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
#     spack install r-methylcc
#
# You can edit this file again by typing:
#
#     spack edit r-methylcc
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RMethylcc(RPackage):
    """A tool to estimate the cell composition of DNA methylation whole blood sample measured on any platform technology (microarray and sequencing)."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://bioconductor.org/packages/release/bioc/html/methylCC.html"
    url = "https://bioconductor.org/packages/release/bioc/src/contrib/methylCC_1.12.0.tar.gz"
    bioc = "methylCC"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("1.12.0", sha256="b4f47e31294af20370f569fb5b0b4e04e76f8bf715ce32a4a3ba76216dd01f54")

    depends_on("r-flowsorted-blood-450k", type=("build", "run"))
    depends_on("r-biobase", type=("build", "run"))
    depends_on("r-genomicranges", type=("build", "run"))
    depends_on("r-iranges", type=("build", "run"))
    depends_on("r-s4vectors", type=("build", "run"))
    depends_on("r-dplyr", type=("build", "run"))
    depends_on("r-magrittr", type=("build", "run"))
    depends_on("r-minfi", type=("build", "run"))
    depends_on("r-bsseq", type=("build", "run"))
    depends_on("r-quadprog", type=("build", "run"))
    depends_on("r-plyranges", type=("build", "run"))
    depends_on("r-bumphunter", type=("build", "run"))
    depends_on("r-genefilter", type=("build", "run"))
    depends_on("r-illuminahumanmethylation450kmanifest", type=("build", "run"))
    depends_on("r-illuminahumanmethylation450kanno-ilmn12-hg19", type=("build", "run"))
