# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RWesanderson(RPackage):
    """Palettes generated mostly from 'Wes Anderson' movies."""

    homepage = "https://github.com/karthik/wesanderson"
    cran = "wesanderson"

    version("0.3.6", sha256="22b6ea042a01d68a3bb471fc747f12c9beee61e1e4a4cf8ec0b2e12ac535b926")
