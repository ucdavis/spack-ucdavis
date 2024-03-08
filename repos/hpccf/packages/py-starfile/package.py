# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack.package import *


class PyStarfile(PythonPackage):
    """starfile is a Python implementation of the STAR file format designed principally for 
    compatibility with RELION format STAR files."""

    homepage = "https://github.com/teamtomo/starfile"
    pypi = "starfile/starfile-0.4.12.tar.gz"

    maintainers = ["camillescott"]

    version("0.4.12", sha256="ea2751b6dbb74ba92c89f75fc8c06dae0f708a1d907e07c2394bc4c54ff7727a")

    depends_on("py-setuptools@45:", type=("build"))
    depends_on("py-setuptools-scm", type=("build"))
    depends_on("py-pandas", type=("build", "run"))

