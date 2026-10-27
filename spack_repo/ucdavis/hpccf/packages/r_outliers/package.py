# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class ROutliers(RPackage):
    """A collection of some tests commonly used for identifying outliers."""

    homepage = "https://www.R-project.org, http://www.komsta.net/"
    cran = "outliers"

    version("0.15", sha256="cc31d7f2faefd2c3a27f8ce78c7e67d3b321dcd6690292fad2468125e5e635fb")
