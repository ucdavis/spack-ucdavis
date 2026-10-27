# Copyright 2013-2021 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
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
