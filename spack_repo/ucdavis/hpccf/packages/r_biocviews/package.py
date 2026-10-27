# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RBiocviews(RPackage):
    """Infrastructure to support 'views' used to classify Bioconductor packages. 'biocViews' are directed acyclic graphs of terms from a controlled vocabulary. There are three major classifications, corresponding to 'software', 'annotation', and 'experiment data' packages."""

    homepage = "https://bioconductor.org/packages/release/bioc/html/biocViews.html"
    # pinned to Bioconductor 3.16; packages/release/ URLs stop working after each release
    url = "https://bioconductor.org/packages/3.16/bioc/src/contrib/Archive/biocViews/biocViews_1.66.0.tar.gz"
    bioc = "biocViews"

    version("1.66.0", sha256="4348fb91724ed6e83c21a4d616155d3740544c0ef8778a06429ed4c29f02f6e5")

    depends_on("r-biobase", type=("build", "run"))
    depends_on("r-graph", type=("build", "run"))
    depends_on("r-rbgl", type=("build", "run"))
    depends_on("r-xml", type=("build", "run"))
    depends_on("r-rcurl", type=("build", "run"))
    depends_on("r-runit", type=("build", "run"))
    depends_on("r-biocmanager", type=("build", "run"))
