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
#     spack install r-performanceanalytics
#
# You can edit this file again by typing:
#
#     spack edit r-performanceanalytics
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RPerformanceanalytics(RPackage):
    """Collection of econometric functions for performance and risk analysis. In addition to standard risk and performance metrics, this package aims to aid practitioners and researchers in utilizing the latest research in analysis of non-normal return streams. In general, it is most tested on return (rather than price) data on a regular scale, but most functions will work with irregular return data as well, and increasing numbers of functions will work with P&L or price data where possible."""

    homepage = "https://github.com/braverock/PerformanceAnalytics"
    cran = "PerformanceAnalytics"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("2.0.4", sha256="78a17070977665b30ddf3999d02fbbcca0f418b0791358c14bdc722235342232")

    # FIXME: Add dependencies if required.
    # depends_on("r-foo", type=("build", "run"))
    depends_on("r-xts", type=("build", "run"))
    depends_on("r-quadprog", type=("build", "run"))
    depends_on("r-zoo", type=("build", "run"))
