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
#     spack install r-bayestestr
#
# You can edit this file again by typing:
#
#     spack edit r-bayestestr
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RBayestestr(RPackage):
    """Provides utilities to describe posterior distributions and Bayesian models. It includes point-estimates such as Maximum A Posteriori (MAP), measures of dispersion (Highest Density Interval - HDI; Kruschke, 2015 <doi:10.1016/C2012-0-00477-2>) and indices used for null-hypothesis testing (such as ROPE percentage, pd and Bayes factors)."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://cran.r-project.org/web/packages/bayestestR/index.html"
    cran = "bayestestR"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("0.13.0", sha256="206905f5e9ac82c9a6d1c41008713d952b71f8fbeee7a732c975518c50fda1a4")

    # FIXME: Add dependencies if required.
    # depends_on("r-foo", type=("build", "run"))

    def configure_args(self):
        # FIXME: Add arguments to pass to install via --configure-args
        # FIXME: If not needed delete this function
        args = []
        return args
    depends_on("r-insight", type=("build", "run"))
    depends_on("r-datawizard", type=("build", "run"))
