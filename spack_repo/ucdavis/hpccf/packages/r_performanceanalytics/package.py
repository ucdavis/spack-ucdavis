# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RPerformanceanalytics(RPackage):
    """Collection of econometric functions for performance and risk analysis. In addition to standard risk and performance metrics, this package aims to aid practitioners and researchers in utilizing the latest research in analysis of non-normal return streams. In general, it is most tested on return (rather than price) data on a regular scale, but most functions will work with irregular return data as well, and increasing numbers of functions will work with P&L or price data where possible."""

    homepage = "https://github.com/braverock/PerformanceAnalytics"
    cran = "PerformanceAnalytics"

    version("2.0.4", sha256="78a17070977665b30ddf3999d02fbbcca0f418b0791358c14bdc722235342232")

    depends_on("r-xts", type=("build", "run"))
    depends_on("r-quadprog", type=("build", "run"))
    depends_on("r-zoo", type=("build", "run"))
