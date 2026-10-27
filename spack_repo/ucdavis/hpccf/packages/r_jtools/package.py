# Copyright 2013-2021 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RJtools(RPackage):
    """jtools: Analysis and Presentation of Social Scientific Data

This is a collection of tools for more efficiently understanding and sharing the results of (primarily) regression analyses. There are also a number of miscellaneous functions for statistical and programming purposes. Support for models produced by the survey and lme4 packages are points of emphasis."""

    cran     = "jtools"

    version('2.2.0', sha256='0e8062affcac19fee0b3533ac79c9ce71697b1ed87447d8b6001bc46abb44ea9')

    depends_on('r-crayon', type=('build', 'run'))
    depends_on('r-generics', type=('build', 'run'))
    depends_on('r-ggplot2', type=('build', 'run'))
    depends_on('r-magrittr', type=('build', 'run'))
    depends_on('r-pkgconfig', type=('build', 'run'))
    depends_on('r-rlang', type=('build', 'run'))
    depends_on('r-tibble', type=('build', 'run'))
    depends_on('r-pander', type=('build', 'run'))
