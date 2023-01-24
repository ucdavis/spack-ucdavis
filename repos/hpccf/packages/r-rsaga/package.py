# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack.package import *


class RRsaga(RPackage):
    """Provides access to geocomputing and terrain analysis functions of the 
    geographical information system (GIS) 'SAGA' (System for Automated Geoscientific 
    Analyses) from within R by running the command line version of SAGA. This package
    furthermore provides several R functions for handling ASCII grids, including a 
    flexible framework for applying local functions (including predict methods of 
    fitted models) and focal functions to multiple grids. """

    homepage = "https://github.com/r-spatial/RSAGA"
    cran = "RSAGA"

    maintainers = ["camillescott" ]

    version("1.3.0", sha256="c9def9b21e256dca6af805223ec5d07be25c627a4d765b37dadacdbe84873ff8")
    version("1.2.0", sha256="fc5f5827e54b86baaf346ae9e994f970226b856045a41cf0b4d923cea27c7cba")
    version("1.1.1", sha256="038fc8715f6b4e6cb1d064944864dae0c048bb52d4ac7e0fc11bde00cea3b1fe")
    version("1.1.0", sha256="5f2838855f87fc41c5e7a53c0637713a81df16d4513c24ed9245f8924f361bce")
    version("1.0.0", sha256="619976c2ddbbaa5a78a0cff6836o130400c8a899bc1085b270adc4480515e4380")

    depends_on('r@2.10:', type=('build', 'run'))
    depends_on("r-gstat", type=("build", "run"))
    depends_on("r-shapefiles", type=("build", "run"))
    depends_on("r-plyr", type=("build", "run"))
    depends_on("r-rgdal", type=("build", "run"))
    depends_on("r-stringr", type=("build", "run"))
    depends_on("r-magrittr", type=("build", "run"))
    
    depends_on("saga-gis@2.3-lts:7.0.0", type=("run"))

    def configure_args(self):
        # FIXME: Add arguments to pass to install via --configure-args
        # FIXME: If not needed delete this function
        args = []
        return args
