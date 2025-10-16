# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage

from spack.package import *


class RTxdbHsapiensUcscHg38Knowngene(RPackage):
    """Annotation package for TxDb object(s)"""

    homepage = "https://bioconductor.org/packages/release/data/annotation/html/TxDb.Hsapiens.UCSC.hg38.knownGene.html"
    url = "https://bioconductor.org/packages/release/data/annotation/src/contrib/TxDb.Hsapiens.UCSC.hg38.knownGene_3.16.0.tar.gz"
    bioc = "TxDb.Hsapiens.UCSC.hg38.knownGene"

    version("3.16.0", sha256="67848860a3940adc8df2da13c0b19301656dfdb33ba238312ed0f9159dbdf0ce")

    depends_on("r-genomicfeatures", type=("build", "run"))
    depends_on("r-annotationdbi", type=("build", "run"))
