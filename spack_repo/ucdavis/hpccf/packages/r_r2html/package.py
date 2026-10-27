# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RR2html(RPackage):
    """Includes HTML function and methods to write in an HTML file. Thus, making HTML reports is easy. Includes a function that allows redirection on the fly, which appears to be very useful for teaching purpose, as the student can keep a copy of the produced output to keep all that he did during the course. Package comes with a vignette describing how to write HTML reports for statistical analysis. Finally, a driver for 'Sweave' allows to parse HTML flat files containing R code and to automatically write the corresponding outputs (tables and graphs)."""

    homepage = "https://github.com/nalimilan/R2HTML"
    cran = "R2HTML"

    version("2.3.3", sha256="4a7e181a1c444f83ccac7eb8b19962de08dd649ae5b9868813d008196e4e0f8b")
