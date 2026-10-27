# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.cmake import CMakePackage
from spack.package import *


class Slim(CMakePackage):
    """SLiM is an evolutionary simulation framework that combines a powerful engine for population genetic simulations with the capability of modeling arbitrarily complex evolutionary scenarios."""

    homepage = "https://messerlab.org/slim/"
    url = "https://github.com/MesserLab/SLiM/releases/download/v4.0.1/SLiM.zip"

    version("4.0.1", sha256="92e7ebe09cc1b048bcd4586a22b5df0f982dbdc543aae1d4e5abb6a60b17e2de")

    depends_on("c", type="build")
    depends_on("cxx", type="build")
