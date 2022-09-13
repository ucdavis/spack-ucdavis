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
#     spack install r-terra
#
# You can edit this file again by typing:
#
#     spack edit r-terra
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack import *


class RTerra(RPackage):
    """Methods for spatial data analysis with raster and vector data. Raster methods allow for low-level data manipulation as well as high-level global, local, zonal, and focal computation. The predict and interpolate methods facilitate the use of regression type (interpolation, machine learning) models for spatial prediction, including with satellite remote sensing data. Processing of very large files is supported. See the manual and tutorials on <https://rspatial.org/terra/> to get started. 'terra' is very similar to the 'raster' package; but 'terra' can do more, is easier to use, and it is faster."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://rspatial.org/terra/"
    cran     = "terra"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ['github_user1', 'github_user2']

    version('1.5-21', sha256='091ee928ccaa6561aa9f8ee6c1c99f139dc89f1653c2a76a035cca14d404f43f')

    # FIXME: Add dependencies if required.
    # depends_on('r-foo', type=('build', 'run'))
    depends_on('r@4:', type=('build', 'run'))
    depends_on('r-rcpp@0.12.18:', type=('build', 'run'))
    depends_on('r-raster')
    depends_on('gdal@2.2.3:')
    depends_on('geos@3.4.0:')
    depends_on('proj@4.9.3:')
    depends_on('sqlite')

    def configure_args(self):
        # FIXME: Add arguments to pass to install via --configure-args
        # FIXME: If not needed delete this function
        args = []
        return args
