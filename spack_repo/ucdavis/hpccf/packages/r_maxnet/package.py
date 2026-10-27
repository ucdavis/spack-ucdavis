# Copyright 2013-2021 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RMaxnet(RPackage):
    
    """Procedures to fit species distributions models from occurrence
    records and environmental variables, using 'glmnet' for model
    fitting. Model structure is the same as for the 'Maxent' Java
    package, version 3.4.0, with the same feature types and
    regularization options. See the 'Maxent' website
    <http://biodiversityinformatics.amnh.org/open_source/maxent> for
    more details."""

    homepage = "https://cran.r-project.org/web/packages/maxnet/index.html"
    cran     = "maxnet"

    version('0.1.4', sha256='fd21e5ecf3c1ac00ef1bbe79fab4cdd62789e0c4c45f126f1b64bda667238216')

    depends_on('r-glmnet', type=('build', 'run'))    
