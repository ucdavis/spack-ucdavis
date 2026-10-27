# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RWordcloud(RPackage):
    """Functionality to create pretty word clouds, visualize differences and similarity between documents, and avoid over-plotting in scatter plots with text."""

    homepage = "http://www.fellstat.com/"
    cran = "wordcloud"

    version("2.6", sha256="53716954430acd4f164bfd8eacd7068a908ee3358293ded6cd992d53b7f72649")

    depends_on("r-rcolorbrewer", type=("build", "run"))
    depends_on("r-rcpp", type=("build", "run"))
