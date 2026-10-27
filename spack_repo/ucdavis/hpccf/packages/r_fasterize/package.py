# Copyright 2013-2021 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RFasterize(RPackage):
    """Provides a drop-in replacement for rasterize() from the 'raster' package that takes 'sf'-type objects, and is much faster. There is support for the main options provided by the rasterize() function, including setting the field used and background value, and options for aggregating multi-layer rasters. Uses the scan line algorithm attributed to Wylie et al. (1967) <doi:10.1145/1465611.1465619>."""

    homepage = "https://github.com/ecohealthalliance/fasterize"
    cran     = "fasterize"

    version('1.0.3', sha256='62b459625e9bdb00251ec5f6cb873e0c59713f3e86dc1e2c8332adc0cea17f81')

    depends_on('r-rcpp', type=('build', 'run'))
    depends_on('r-raster', type=('build', 'run'))
    depends_on('r-sp', type=('build', 'run'))
    depends_on('r-rcpparmadillo', type=('build', 'run'))
