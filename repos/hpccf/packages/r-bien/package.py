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
#     spack install r-bien
#
# You can edit this file again by typing:
#
#     spack edit r-bien
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RBien(RPackage):
    
    """Provides Tools for Accessing the Botanical Information and
    Ecology Network Database. The BIEN database contains cleaned and
    standardized botanical data including occurrence, trait, plot and
    taxonomic data (See <https://bien.nceas.ucsb.edu/bien/> for more
    Information). This package provides functions that query the BIEN
    database by constructing and executing optimized SQL queries."""

    homepage = "https://cran.r-project.org/web/packages/BIEN/index.html"
    cran     = "BIEN"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ['github_user1', 'github_user2']

    version('1.2.5', sha256='8844b35b61d7e9678135022cc6d50cbb33a8d5347318389ad61b11b7beb12869')

    depends_on('r-rpostgresql', type=('build', 'run'))    
    depends_on('r-rgeos', type=('build', 'run'))    
    depends_on('r-rgdal', type=('build', 'run'))    
    depends_on('r-sp', type=('build', 'run'))    
    depends_on('r-dbi', type=('build', 'run'))    
    depends_on('r-ape', type=('build', 'run'))    
    depends_on('r-sf', type=('build', 'run'))    
    depends_on('r-fasterize', type=('build', 'run'))    
    depends_on('r-raster', type=('build', 'run'))    
    depends_on('r-doparallel', type=('build', 'run'))    
    depends_on('r-foreach', type=('build', 'run'))        
    
