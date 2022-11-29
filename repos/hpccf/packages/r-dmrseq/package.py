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
#     spack install r-dmrseq
#
# You can edit this file again by typing:
#
#     spack edit r-dmrseq
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RDmrseq(RPackage):
    """Detection and inference of differentially methylated regions from Whole Genome Bisulfite Sequencing"""

    homepage = "https://www.bioconductor.org/packages/release/bioc/html/dmrseq.html"
    url = "https://www.bioconductor.org/packages/release/bioc/src/contrib/dmrseq_1.16.0.tar.gz"
    bioc = "dmrseq"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("1.16.0", sha256="962cc6e0525afdff6166ad41b70b05ea0b71f4de9ae67ff7b2cb88e884a129b1")

    # depends_on("r-foo", type=("build", "run"))
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
