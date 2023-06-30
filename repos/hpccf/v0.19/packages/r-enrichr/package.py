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
#     spack install r-enrichr
#
# You can edit this file again by typing:
#
#     spack edit r-enrichr
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class REnrichr(RPackage):
    """Provides an R interface to all 'Enrichr' databases. 'Enrichr' is a web-based tool for analysing gene sets and returns any enrichment of common annotated biological features. Quoting from their website 'Enrichment analysis is a computational method for inferring knowledge about an input gene set by comparing it to annotated gene sets representing prior biological knowledge.' See <https://maayanlab.cloud/Enrichr/> for further details."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://maayanlab.cloud/Enrichr/"
    cran = "enrichR"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("3.1", sha256="2986ec1cef7c62af08ada5f476ccab806c8891110754ef44ad3b5f94c695a729")

    # FIXME: Add dependencies if required.
    # depends_on("r-foo", type=("build", "run"))
    depends_on("r-httr", type=("build", "run"))
    depends_on("r-curl", type=("build", "run"))
    depends_on("r-rjson", type=("build", "run"))
    depends_on("r-ggplot2", type=("build", "run"))
