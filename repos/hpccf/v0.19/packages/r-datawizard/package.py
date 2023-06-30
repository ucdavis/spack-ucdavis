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
#     spack install r-datawizard
#
# You can edit this file again by typing:
#
#     spack edit r-datawizard
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RDatawizard(RPackage):
    """A lightweight package to assist in key steps involved in any data analysis workflow: (1) wrangling the raw data to get it in the needed form, (2) applying preprocessing steps and statistical transformations, and (3) compute statistical summaries of data properties and distributions. It is also the data wrangling backend for packages in 'easystats' ecosystem. References: Patil et al. (2022) <doi:10.21105/joss.04684>."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://cran.r-project.org/web/packages/datawizard/index.html"
    cran = "datawizard"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("0.6.4", sha256="37852d11f8455737924a78033849984bc4519c04e74bb17dcf32d6bf10806347")

    # FIXME: Add dependencies if required.
    # depends_on("r-foo", type=("build", "run"))

    def configure_args(self):
        # FIXME: Add arguments to pass to install via --configure-args
        # FIXME: If not needed delete this function
        args = []
        return args
    depends_on("r-insight@0.18.7:", type=("build", "run"))
