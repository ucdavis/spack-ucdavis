# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RLogspline(RPackage):
    """Contains routines for logspline density estimation. The function oldlogspline() uses the same algorithm as the logspline package version 1.0.x; i.e. the Kooperberg and Stone (1992) algorithm (with an improved interface). The recommended routine logspline() uses an algorithm from Stone et al (1997) <doi:10.1214/aos/1031594728>."""

    homepage = "https://cran.r-project.org/web/packages/logspline/index.html"
    cran = "logspline"

    version("2.1.17", sha256="03b72b860896f8801014b7b3b907389cc3cbe2e13bc1049241606df685a08815")
