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
#     spack install r-plyranges
#
# You can edit this file again by typing:
#
#     spack edit r-plyranges
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RPlyranges(RPackage):
    """A dplyr-like interface for interacting with the common Bioconductor classes Ranges and GenomicRanges. By providing a grammatical and consistent way of manipulating these classes their accessiblity for new Bioconductor users is hopefully increased."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://bioconductor.org/packages/release/bioc/html/plyranges.html"
    url = "https://bioconductor.org/packages/release/bioc/src/contrib/plyranges_1.18.0.tar.gz"
    bioc = "plyranges"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("1.18.0", sha256="9b32885a1821d1143e2f966edef965810edb4626b30b4901d2288523791ee453")

    depends_on("r-biocgenerics", type=("build", "run"))
    depends_on("r-iranges", type=("build", "run"))
    depends_on("r-genomicranges", type=("build", "run"))
    depends_on("r-dplyr", type=("build", "run"))
    depends_on("r-rlang", type=("build", "run"))
    depends_on("r-magrittr", type=("build", "run"))
    depends_on("r-tidyselect", type=("build", "run"))
    depends_on("r-rtracklayer", type=("build", "run"))
    depends_on("r-genomicalignments", type=("build", "run"))
    depends_on("r-genomeinfodb", type=("build", "run"))
    depends_on("r-rsamtools", type=("build", "run"))
    depends_on("r-s4vectors", type=("build", "run"))
