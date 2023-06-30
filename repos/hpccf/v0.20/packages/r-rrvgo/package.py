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
#     spack install r-rrvgo
#
# You can edit this file again by typing:
#
#     spack edit r-rrvgo
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RRrvgo(RPackage):
    """Reduce and visualize lists of Gene Ontology terms by identifying redudance based on semantic similarity."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://bioconductor.org/packages/release/bioc/html/rrvgo.html"
    url = "https://bioconductor.org/packages/release/bioc/src/contrib/rrvgo_1.10.0.tar.gz"
    bioc = "rrvgo"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("1.10.0", sha256="f80fe7c0f362874185f988f3fcc7d0a66859081ae31468aa84d714ff7410067e")

    depends_on("r-gosemsim", type=("build", "run"))
    depends_on("r-annotationdbi", type=("build", "run"))
    depends_on("r-go-db", type=("build", "run"))
    depends_on("r-pheatmap", type=("build", "run"))
    depends_on("r-ggplot2", type=("build", "run"))
    depends_on("r-ggrepel", type=("build", "run"))
    depends_on("r-treemap", type=("build", "run"))
    depends_on("r-tm", type=("build", "run"))
    depends_on("r-wordcloud", type=("build", "run"))
    depends_on("r-shiny", type=("build", "run"))
    depends_on("r-umap", type=("build", "run"))
