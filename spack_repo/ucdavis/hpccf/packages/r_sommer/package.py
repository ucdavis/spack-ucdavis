# Copyright 2013-2021 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RSommer(RPackage): 
    
    """Structural multivariate-univariate linear mixed model solver
    for estimation of multiple random effects with unknown
    variance-covariance structures (e.g., heterogeneous and
    unstructured) and known covariance among levels of random effects
    (e.g., pedigree and genomic relationship matrices)
    (Covarrubias-Pazaran, 2016 <doi:10.1371/journal.pone.0156744>;
    Maier et al., 2015 <doi:10.1016/j.ajhg.2014.12.006>). REML
    estimates can be obtained using the Direct-Inversion
    Newton-Raphson and Direct-Inversion Average Information
    algorithms. Designed for genomic prediction and genome wide
    association studies (GWAS), particularly focused in the p > n
    problem (more coefficients to estimate than observations). Spatial
    models can also be fitted using the two-dimensional spline
    functionality available in sommer."""

    homepage = "https://cran.r-project.org/web/packages/sommer/"
    cran     = "sommer"

    version('4.1.6', sha256='e8fed96e2135852b23868c086f40460f4bbbf9d237cba50e368fb2bdea2db024')

    depends_on('r-matrix', type=('build', 'run'))
    depends_on('r-mass', type=('build', 'run'))
    depends_on('r-lattice', type=('build', 'run'))
    depends_on('r-crayon', type=('build', 'run'))
    depends_on('r-rcpp', type=('build', 'run'))
    depends_on('r-rcpparmadillo', type=('build', 'run'))
    depends_on('r-rcppprogress', type=('build', 'run'))
