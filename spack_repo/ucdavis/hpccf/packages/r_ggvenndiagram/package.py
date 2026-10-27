# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RGgvenndiagram(RPackage):
    """Easy-to-use functions to generate 2-7 sets Venn plot in publication quality. 'ggVennDiagram' plot Venn using well-defined geometry dataset and 'ggplot2'. The shapes of 2-4 sets Venn use circles and ellipses, while the shapes of 4-7 sets Venn use irregular polygons (4 has both forms), which are developed and imported from another package 'venn', authored by Adrian Dusa. We provided internal functions to integrate shape data with user provided sets data, and calculated the geometry of every regions/intersections of them, then separately plot Venn in three components: set edges, set labels, and regions. From version 1.0, it is possible to customize these components as you demand in ordinary 'ggplot2' grammar."""

    homepage = "https://github.com/gaospecial/ggVennDiagram"
    cran = "ggVennDiagram"

    version("1.2.2", sha256="939c0bd3e7c01c87560a9dd938cfc46ac7bd52a56147d9464f58b053998d8cd0")

    depends_on("r-sf", type=("build", "run"))
    depends_on("r-ggplot2", type=("build", "run"))
    depends_on("r-dplyr", type=("build", "run"))
    depends_on("r-magrittr", type=("build", "run"))
    depends_on("r-purrr", type=("build", "run"))
    depends_on("r-tibble", type=("build", "run"))
    depends_on("r-plotly", type=("build", "run"))
    depends_on("r-rvenn", type=("build", "run"))
    depends_on("r-yulab-utils", type=("build", "run"))
