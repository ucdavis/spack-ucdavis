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
#     spack install r-wordcloud
#
# You can edit this file again by typing:
#
#     spack edit r-wordcloud
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RWordcloud(RPackage):
    """Functionality to create pretty word clouds, visualize differences and similarity between documents, and avoid over-plotting in scatter plots with text."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "http://www.fellstat.com/"
    cran = "wordcloud"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("2.6", sha256="53716954430acd4f164bfd8eacd7068a908ee3358293ded6cd992d53b7f72649")

    # FIXME: Add dependencies if required.
    # depends_on("r-foo", type=("build", "run"))
    depends_on("r-rcolorbrewer", type=("build", "run"))
    depends_on("r-rcpp", type=("build", "run"))
