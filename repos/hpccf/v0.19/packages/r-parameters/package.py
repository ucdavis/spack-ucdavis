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
#     spack install r-parameters
#
# You can edit this file again by typing:
#
#     spack edit r-parameters
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RParameters(RPackage):
    """Utilities for processing the parameters of various statistical models. Beyond computing p values, CIs, and other indices for a wide variety of models (see list of supported models using the function 'insight::supported_models()'), this package implements features like bootstrapping or simulating of parameters and models, feature reduction (feature extraction and variable selection) as well as functions to describe data and variable characteristics (e.g. skewness, kurtosis, smoothness or distribution)."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://cran.r-project.org/web/packages/parameters/index.html"
    cran = "parameters"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("0.20.0", sha256="37d1141baa0fe347bad58dc1d53bbd8802be5b6d99b5d70fc3baa0010916c99b")

    # FIXME: Add dependencies if required.
    # depends_on("r-foo", type=("build", "run"))

    def configure_args(self):
        # FIXME: Add arguments to pass to install via --configure-args
        # FIXME: If not needed delete this function
        args = []
        return args

    depends_on("r-bayestestr", type=("build", "run"))
    depends_on("r-datawizard", type=("build", "run"))
    depends_on("r-insight@0.18.8:", type=("build", "run"))
