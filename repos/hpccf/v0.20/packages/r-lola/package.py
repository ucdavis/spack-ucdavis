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
#     spack install r-lola
#
# You can edit this file again by typing:
#
#     spack edit r-lola
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RLola(RPackage):
    """Provides functions for testing overlap of sets of genomic regions with public and custom region set (genomic ranges) databases. This makes it possible to do automated enrichment analysis for genomic region sets, thus facilitating interpretation of functional genomics and epigenomics data."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://bioconductor.org/packages/release/bioc/html/LOLA.html"
    url = "https://bioconductor.org/packages/release/bioc/src/contrib/LOLA_1.28.0.tar.gz"
    bioc = "LOLA"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("1.28.0", sha256="2d4d2f5715fee18b08a6b32a76259ba7612cd0a00c0f3cfdaafa302e730bd301")

    depends_on("r-biocgenerics", type=("build", "run"))
    depends_on("r-s4vectors", type=("build", "run"))
    depends_on("r-iranges", type=("build", "run"))
    depends_on("r-genomicranges", type=("build", "run"))
    depends_on("r-data-table", type=("build", "run"))
    depends_on("r-reshape2", type=("build", "run"))
