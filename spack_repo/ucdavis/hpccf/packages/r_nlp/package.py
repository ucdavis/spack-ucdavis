# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RNlp(RPackage):
    """Basic classes and methods for Natural Language Processing."""

    homepage = "https://cran.r-project.org/web/packages/NLP/index.html"
    cran = "NLP"

    version("0.2-1", sha256="05eaa453ad2757311c073fd30093c738b20a977c5089031eb454345a1d01f2b6")

    depends_on("r@4:", type=("build", "run"))
    depends_on("r-r-utils", type=("build", "run"))
