# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RTm(RPackage):
    """A framework for text mining applications within R."""

    homepage = "https://tm.r-forge.r-project.org/"
    cran = "tm"

    version("0.7-9", sha256="db53e851a050b52264931cdd1b9186c2d91be074c3fc68a00b22967192a47e28")

    depends_on("c", type="build")
    depends_on("cxx", type="build")

    depends_on("r-nlp", type=("build", "run"))
    depends_on("r-rcpp", type=("build", "run"))
    depends_on("r-slam", type=("build", "run"))
    depends_on("r-xml2", type=("build", "run"))
    depends_on("r-bh", type=("build", "run"))
