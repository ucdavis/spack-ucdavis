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
#     spack install r-biocviews
#
# You can edit this file again by typing:
#
#     spack edit r-biocviews
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RBiocviews(RPackage):
    """Infrastructure to support 'views' used to classify Bioconductor packages. 'biocViews' are directed acyclic graphs of terms from a controlled vocabulary. There are three major classifications, corresponding to 'software', 'annotation', and 'experiment data' packages."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://bioconductor.org/packages/release/bioc/html/biocViews.html"
    url = "https://bioconductor.org/packages/release/bioc/src/contrib/biocViews_1.66.0.tar.gz"
    bioc = "biocViews"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("1.66.0", sha256="4348fb91724ed6e83c21a4d616155d3740544c0ef8778a06429ed4c29f02f6e5")

    depends_on("r-biobase", type=("build", "run"))
    depends_on("r-graph", type=("build", "run"))
    depends_on("r-rbgl", type=("build", "run"))
    depends_on("r-xml", type=("build", "run"))
    depends_on("r-rcurl", type=("build", "run"))
    depends_on("r-runit", type=("build", "run"))
    depends_on("r-biocmanager", type=("build", "run"))
