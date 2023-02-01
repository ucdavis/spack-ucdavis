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
#     spack install r-logspline
#
# You can edit this file again by typing:
#
#     spack edit r-logspline
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RLogspline(RPackage):
    """Contains routines for logspline density estimation. The function oldlogspline() uses the same algorithm as the logspline package version 1.0.x; i.e. the Kooperberg and Stone (1992) algorithm (with an improved interface). The recommended routine logspline() uses an algorithm from Stone et al (1997) <doi:10.1214/aos/1031594728>."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://cran.r-project.org/web/packages/logspline/index.html"
    cran = "logspline"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("2.1.17", sha256="03b72b860896f8801014b7b3b907389cc3cbe2e13bc1049241606df685a08815")

    # FIXME: Add dependencies if required.
    # depends_on("r-foo", type=("build", "run"))
