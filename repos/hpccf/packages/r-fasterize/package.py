# Copyright 2013-2021 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

# ----------------------------------------------------------------------------
# If you submit this package back to Spack as a pull request,
# please first remove this boilerplate and all FIXME comments.
#
# This is a template package file for Spack.  We've put "FIXME"
# next to all the things you'll want to change. Once you've handled
# them, you can save this file and test your package like this:
#
#     spack install r-fasterize
#
# You can edit this file again by typing:
#
#     spack edit r-fasterize
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack import *


class RFasterize(RPackage):
    """Provides a drop-in replacement for rasterize() from the 'raster' package that takes 'sf'-type objects, and is much faster. There is support for the main options provided by the rasterize() function, including setting the field used and background value, and options for aggregating multi-layer rasters. Uses the scan line algorithm attributed to Wylie et al. (1967) <doi:10.1145/1465611.1465619>."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://github.com/ecohealthalliance/fasterize"
    cran     = "fasterize"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ['github_user1', 'github_user2']

    version('1.0.3', sha256='62b459625e9bdb00251ec5f6cb873e0c59713f3e86dc1e2c8332adc0cea17f81')

    # FIXME: Add dependencies if required.
    # depends_on('r-foo', type=('build', 'run'))
    depends_on('r-rcpp', type=('build', 'run'))
    depends_on('r-raster', type=('build', 'run'))
    depends_on('r-sp', type=('build', 'run'))
    depends_on('r-rcpparmadillo', type=('build', 'run'))

    def configure_args(self):
        # FIXME: Add arguments to pass to install via --configure-args
        # FIXME: If not needed delete this function
        args = []
        return args
