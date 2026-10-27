# Copyright 2013-2021 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RDofuture(RPackage):

    """Provides a '%dopar%' adapter such that any type of futures can
    be used as backends for the 'foreach' framework."""

    homepage = "https://github.com/HenrikBengtsson/doFuture"
    cran     = "doFuture"

    version('0.12.1', sha256='d5e8012decb1eea598a3ba498c664f5ce906b6c4adcd5d07ef7cb104a318133a')

    depends_on('r-foreach@1.5.0:', type=('build', 'run'))
    depends_on('r-future@1.22.1:', type=('build', 'run'))    
