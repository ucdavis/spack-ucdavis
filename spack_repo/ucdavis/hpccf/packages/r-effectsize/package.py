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
#     spack install r-effectsize
#
# You can edit this file again by typing:
#
#     spack edit r-effectsize
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class REffectsize(RPackage):
    """Provide utilities to work with indices of effect size for a wide variety of models and hypothesis tests (see list of supported models using the function 'insight::supported_models()'), allowing computation of and conversion between indices such as Cohen's d, r, odds, etc. References: Ben-Shachar et al. (2020) <doi:10.21105/joss.02815>."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://cran.r-project.org/web/packages/effectsize/index.html"
    cran = "effectsize"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("0.8.2", sha256="6ce2b2abb16cf918fd9429e54d6688388ef9b9e543a051da38ad9236efde73c5")

    # FIXME: Add dependencies if required.
    # depends_on("r-foo", type=("build", "run"))

    def configure_args(self):
        # FIXME: Add arguments to pass to install via --configure-args
        # FIXME: If not needed delete this function
        args = []
        return args
    
    depends_on("r-bayestestr", type=("build", "run"))
    depends_on("r-insight", type=("build", "run"))
    depends_on("r-parameters", type=("build", "run"))
    depends_on("r-performance", type=("build", "run"))
    depends_on("r-datawizard", type=("build", "run"))
