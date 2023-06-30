# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack.package import *


class REnvirem(RPackage):
    """Generation of bioclimatic rasters that are complementary to the typical 19 bioclim variables."""

    homepage = "http://envirem.github.io/"
    cran = "envirem"

    maintainers = ["camillescott"]

    version("2.3", sha256="9c912105ea729c1f96d6f6253da483571ce81027aa4c6affa42d982f8f6cce3d")
    version("2.2", sha256="76b60c4583bbdef2f5edc5ce171782a9b1bcdcda9cd07103101a4273b8393718")
    version("2.1", sha256="4f75b82fe937805c15d7afca53acd92392c831a1a99cfcbcd944e4802848a19c")
    version("2.0", sha256="0a8c09ceb9bf38321599ae0224fbcc0ed70738616b47429b08988d4998c71a94")

    depends_on("r-raster", type=("build", "run"))
    depends_on("r-palinsol", type=("build", "run"))
    depends_on("r-rsaga", type=("build", "run"))
    depends_on("r-sf", type=("build", "run"))
    depends_on("r-knitr", type=("build", "run"))

