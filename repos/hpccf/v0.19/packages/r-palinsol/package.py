# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack.package import *


class RPalinsol(RPackage):
    """R package to compute Incoming Solar Radiation (insolation) for palaeoclimate studies.
    Features three solutions: Berger (1978), Berger and Loutre (1991) and Laskar et al. (2004).
    Computes daily-mean, season-averaged and annual means for all latitudes."""

    homepage = "https://bitbucket.org/mcrucifix/insol"
    cran = "palinsol"

    maintainers = ["camillescott"]

    version("0.93", sha256="5525b60f601e204996e766f3760d4dd7a6c77b3e042cd800f3c4f92305d5494c")
    version("0.92", sha256="eff62d0a47b19fb30e631d053171fbf16229f13bc36dd51e9728078e3a1ebecb")

    depends_on('r@2.10:', type=('build', 'run'))
    depends_on("r-gsl", type=("build", "run"))

