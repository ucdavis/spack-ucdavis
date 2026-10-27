# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RTreemap(RPackage):
    """A treemap is a space-filling visualization of hierarchical structures. This package offers great flexibility to draw treemaps."""

    homepage = "https://cran.r-project.org/web/packages/treemap/index.html"
    cran = "treemap"

    version("2.4-3", sha256="040f9f104f70e22097bd71636e2a7568b39da3e8592d31acaea7a3c19f7fe8b9")

    depends_on("r-colorspace", type=("build", "run"))
    depends_on("r-data-table", type=("build", "run"))
    depends_on("r-ggplot2", type=("build", "run"))
    depends_on("r-gridbase", type=("build", "run"))
    depends_on("r-igraph", type=("build", "run"))
    depends_on("r-rcolorbrewer", type=("build", "run"))
    depends_on("r-shiny", type=("build", "run"))
