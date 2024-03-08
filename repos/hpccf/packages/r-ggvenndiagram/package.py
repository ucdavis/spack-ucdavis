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
#     spack install r-ggvenndiagram
#
# You can edit this file again by typing:
#
#     spack edit r-ggvenndiagram
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RGgvenndiagram(RPackage):
    """Easy-to-use functions to generate 2-7 sets Venn plot in publication quality. 'ggVennDiagram' plot Venn using well-defined geometry dataset and 'ggplot2'. The shapes of 2-4 sets Venn use circles and ellipses, while the shapes of 4-7 sets Venn use irregular polygons (4 has both forms), which are developed and imported from another package 'venn', authored by Adrian Dusa. We provided internal functions to integrate shape data with user provided sets data, and calculated the geometry of every regions/intersections of them, then separately plot Venn in three components: set edges, set labels, and regions. From version 1.0, it is possible to customize these components as you demand in ordinary 'ggplot2' grammar."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://github.com/gaospecial/ggVennDiagram"
    cran = "ggVennDiagram"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("1.2.2", sha256="939c0bd3e7c01c87560a9dd938cfc46ac7bd52a56147d9464f58b053998d8cd0")

    # FIXME: Add dependencies if required.
    # depends_on("r-foo", type=("build", "run"))
    depends_on("r-sf", type=("build", "run"))
    depends_on("r-ggplot2", type=("build", "run"))
    depends_on("r-dplyr", type=("build", "run"))
    depends_on("r-magrittr", type=("build", "run"))
    depends_on("r-purrr", type=("build", "run"))
    depends_on("r-tibble", type=("build", "run"))
    depends_on("r-plotly", type=("build", "run"))
    depends_on("r-rvenn", type=("build", "run"))
    depends_on("r-yulab-utils", type=("build", "run"))
