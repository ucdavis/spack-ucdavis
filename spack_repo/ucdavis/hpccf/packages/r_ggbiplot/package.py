# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage

from spack.package import *


class RGgbiplot(RPackage):
    """An implementation of the biplot using ggplot2."""

    homepage = "https://github.com/vqv/ggbiplot"
    git = "https://github.com/vqv/ggbiplot.git"

    # Upstream snapshot 7325e88 (DESCRIPTION Version 0.55). CRAN now carries ggbiplot
    # 0.6.5, but it needs r-ggarrow, which builtin does not provide yet.
    version("0.55", commit="7325e880485bea4c07465a0304c470608fffb5d9")

    depends_on("r-ggplot2", type=("build", "run"))
    depends_on("r-plyr", type=("build", "run"))
    depends_on("r-scales", type=("build", "run"))
