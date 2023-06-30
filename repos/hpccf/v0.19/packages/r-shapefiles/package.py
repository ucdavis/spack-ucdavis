# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack.package import *


class RShapefiles(RPackage):
    """Functions to read and write ESRI shapefiles."""

    homepage = "https://cran.r-project.org/package=shapefiles"
    cran = "shapefiles"

    maintainers = ["camillescott"]

    version("0.7.2", sha256="4bfa4094c1052c1b1918b1670798f8b4e53f771cfdf9cb8c04bd00a856674d0f")
    version("0.7.1", sha256="63de50d72765303eff4e084d4bbd2e47de4329df44a60e298a58ad19c89db0e2")
    version("0.7", sha256="eeb18ea4165119519a978d4a2ba1ecbb47649deb96a7f617f5b3100d63b3f021")
    version("0.6", sha256="c84fb725a1901c3246c2ac0c09344cfb4b648cdf219eb29f8f5cd0355acf3fc9")
    version("0.5", sha256="5d17f3aa20b4257398f34b26cbd73f219c1919d6d35c61f70fd502522b96341d")

    depends_on('r@1.6.0:', type=('build', 'run'))
    depends_on("r-foreign", type=("build", "run"))
