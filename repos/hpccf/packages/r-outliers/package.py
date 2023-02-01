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
#     spack install r-outliers
#
# You can edit this file again by typing:
#
#     spack edit r-outliers
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class ROutliers(RPackage):
    """A collection of some tests commonly used for identifying outliers."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://www.R-project.org, http://www.komsta.net/"
    cran = "outliers"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("0.15", sha256="cc31d7f2faefd2c3a27f8ce78c7e67d3b321dcd6690292fad2468125e5e635fb")

    # FIXME: Add dependencies if required.
    # depends_on("r-foo", type=("build", "run"))
