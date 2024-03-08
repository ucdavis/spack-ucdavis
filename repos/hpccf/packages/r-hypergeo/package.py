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
#     spack install r-hypergeo
#
# You can edit this file again by typing:
#
#     spack edit r-hypergeo
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RHypergeo(RPackage):
    """The Gaussian hypergeometric function for complex numbers."""

    homepage = "https://cran.r-project.org/web/packages/hypergeo/index.html"
    cran = "hypergeo"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("1.2-13", sha256="6d5b78353aad1d13091ccbeb340867dad7b9eb00d0e2185286dc7e13848f4d8e")

    # FIXME: Add dependencies if required.
    # depends_on("r-foo", type=("build", "run"))
    depends_on("r-elliptic", type=("build", "run"))
    depends_on("r-contfrac", type=("build", "run"))
    depends_on("r-desolve", type=("build", "run"))
