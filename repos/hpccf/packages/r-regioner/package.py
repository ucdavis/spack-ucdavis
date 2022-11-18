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
#     spack install r-regioner
#
# You can edit this file again by typing:
#
#     spack edit r-regioner
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RRegioner(RPackage):
    """Association analysis of genomic regions based on permutation tests"""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://www.bioconductor.org/packages/release/bioc/html/regioneR.html"
    url = "https://www.bioconductor.org/packages/release/bioc/src/contrib/regioneR_1.28.0.tar.gz"
    bioc = "regioneR"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("1.28.0", sha256="6ea89b61959317a16a16a16f589df0996eb55123814a7674fab18720b6889087")

    # FIXME: Add dependencies if required.
    # depends_on("r-foo", type=("build", "run"))
    depends_on("r-bsgenome@1.66.1:", type=("build", "run"))

    depends_on("r-genomicranges", type=("build", "run"))
    depends_on("r-memoise", type=("build", "run"))
    depends_on("r-iranges", type=("build", "run"))
    depends_on("r-biostrings", type=("build", "run"))
    depends_on("r-rtracklayer", type=("build", "run"))
    depends_on("r-genomeinfodb", type=("build", "run"))
    depends_on("r-s4vectors", type=("build", "run"))
