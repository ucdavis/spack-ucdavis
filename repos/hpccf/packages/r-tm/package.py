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
#     spack install r-tm
#
# You can edit this file again by typing:
#
#     spack edit r-tm
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RTm(RPackage):
    """A framework for text mining applications within R."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://tm.r-forge.r-project.org/"
    cran = "tm"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("0.7-9", sha256="db53e851a050b52264931cdd1b9186c2d91be074c3fc68a00b22967192a47e28")

    # FIXME: Add dependencies if required.
    # depends_on("r-foo", type=("build", "run"))

    def configure_args(self):
        # FIXME: Add arguments to pass to install via --configure-args
        # FIXME: If not needed delete this function
        args = []
        return args
    depends_on("r-nlp", type=("build", "run"))
    depends_on("r-rcpp", type=("build", "run"))
    depends_on("r-slam", type=("build", "run"))
    depends_on("r-xml2", type=("build", "run"))
    depends_on("r-bh", type=("build", "run"))
