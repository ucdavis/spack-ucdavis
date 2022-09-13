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
#     spack install r-sommer
#
# You can edit this file again by typing:
#
#     spack edit r-sommer
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack import *


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

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://cran.r-project.org/web/packages/sommer/"
    cran     = "sommer"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ['github_user1', 'github_user2']

    version('4.1.6', sha256='e8fed96e2135852b23868c086f40460f4bbbf9d237cba50e368fb2bdea2db024')

    # FIXME: Add dependencies if required.
    # depends_on('r-foo', type=('build', 'run'))
    depends_on('r-matrix', type=('build', 'run'))
    depends_on('r-mass', type=('build', 'run'))
    depends_on('r-lattice', type=('build', 'run'))
    depends_on('r-crayon', type=('build', 'run'))
    depends_on('r-rcpp', type=('build', 'run'))
    depends_on('r-rcpparmadillo', type=('build', 'run'))
    depends_on('r-rcppprogress', type=('build', 'run'))
    
    def configure_args(self):
        # FIXME: Add arguments to pass to install via --configure-args
        # FIXME: If not needed delete this function
        args = []
        return args
