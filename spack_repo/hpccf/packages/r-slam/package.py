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
#     spack install r-slam
#
# You can edit this file again by typing:
#
#     spack edit r-slam
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RSlam(RPackage):
    """Data structures and algorithms for sparse arrays and matrices, based on index arrays and simple triplet representations, respectively."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://cran.r-project.org/web/packages/slam/index.html"
    cran = "slam"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("0.1-50", sha256="7899bf3266c204ecccefc1878f96940b117d4503af128f4fbc50fc409163f8bd")

    # FIXME: Add dependencies if required.
    # depends_on("r-foo", type=("build", "run"))
