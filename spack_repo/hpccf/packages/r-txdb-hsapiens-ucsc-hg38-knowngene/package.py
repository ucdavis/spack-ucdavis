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
#     spack install r-txdb-hsapiens-ucsc-hg38-knowngene
#
# You can edit this file again by typing:
#
#     spack edit r-txdb-hsapiens-ucsc-hg38-knowngene
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RTxdbHsapiensUcscHg38Knowngene(RPackage):
    """Annotation package for TxDb object(s)"""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://bioconductor.org/packages/release/data/annotation/html/TxDb.Hsapiens.UCSC.hg38.knownGene.html"
    url = "https://bioconductor.org/packages/release/data/annotation/src/contrib/TxDb.Hsapiens.UCSC.hg38.knownGene_3.16.0.tar.gz"
    bioc = "TxDb.Hsapiens.UCSC.hg38.knownGene"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("3.16.0", sha256="67848860a3940adc8df2da13c0b19301656dfdb33ba238312ed0f9159dbdf0ce")

    depends_on("r-genomicfeatures", type=("build", "run"))
    depends_on("r-annotationdbi", type=("build", "run"))
