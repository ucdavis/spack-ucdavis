# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
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
#     spack install r-treebugs
#
# You can edit this file again by typing:
#
#     spack edit r-treebugs
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RTreebugs(RPackage):
    """User-friendly analysis of hierarchical multinomial processing tree (MPT) models that are often used in cognitive psychology. Implements the latent-trait MPT approach (Klauer, 2010) <doi:10.1007/s11336-009-9141-0> and the beta-MPT approach (Smith & Batchelder, 2010) <doi:10.1016/j.jmp.2009.06.007> to model heterogeneity of participants. MPT models are conveniently specified by an .eqn-file as used by other MPT software and data are provided by a .csv-file or directly in R. Models are either fitted by calling JAGS or by an MPT-tailored Gibbs sampler in C++ (only for nonhierarchical and beta MPT models). Provides tests of heterogeneity and MPT-tailored summaries and plotting functions. A detailed documentation is available in Heck, Arnold, & Arnold (2018) <doi:10.3758/s13428-017-0869-7> and a tutorial on MPT modeling can be found in Schmidt, Erdfelder, & Heck (2022) <doi:10.31234/osf.io/gh8md>."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://github.com/danheck/TreeBUGS"
    cran = "TreeBUGS"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("1.4.9", sha256="487a309219ae9d129edb279c5bc7d9a2aa6a7f89976b940ca33981b49aec23cb")

    # FIXME: Add dependencies if required.
    # depends_on("r-foo", type=("build", "run"))
    depends_on("r-rcpp", type=("build", "run"))
    depends_on("r-runjags", type=("build", "run"))
    depends_on("r-coda", type=("build", "run"))
    depends_on("r-rjags", type=("build", "run"))
    depends_on("r-mass", type=("build", "run"))
    depends_on("r-hypergeo", type=("build", "run"))
    depends_on("r-logspline", type=("build", "run"))
    depends_on("r-rcpparmadillo", type=("build", "run"))
