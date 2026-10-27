# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RGenomicsimulation(RPackage):
    """This project is an R package that runs stochastic simulations of genetics in breeding schemes. The core of the package is written in C."""

    homepage = "https://github.com/vllrs/genomicSimulation"
    url = "https://github.com/vllrs/genomicSimulation/releases/download/v0.2.2/genomicSimulation_0.2.2.tar.gz"

    version("0.2.2", sha256="90c1e19e9b715dc6665a01faf4cf52785ec41d524266fef67accc835e0a4888f")
