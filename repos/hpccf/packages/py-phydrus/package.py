# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)


from spack.package import *


class PyPhydrus(PythonPackage):
    """This package provides a Python implementation of the 
    HYDRUS-1D unsaturated zone model developed by Šimůnek, J.,
    M. Th. van Genuchten, and M. Šejna."""

    homepage = "https://github.com/phydrus/phydrus"
    pypi = "phydrus/phydrus-0.2.0.tar.gz"

    maintainers = ["camillescott"]

    version("0.2.0", sha256="8395b08af3ad688bbe5c455de093fccc4ddb5f1e94ebdebc72268dc47e35a598")

    depends_on("python@3.7:", type=("build", "run"))

    depends_on("py-setuptools", type="build")

    depends_on("py-matplotlib @2.0:", type=("build", "run"))
    depends_on("py-numpy @1.15:", type=("build", "run"))
    depends_on("py-pandas @1.0:", type=("build", "run"))
    depends_on("py-scipy @1.1:", type=("build", "run"))

    depends_on("phydrus-fortran", type=("build", "link", "run"))

    def global_options(self, spec, prefix):
        # FIXME: Add options to pass to setup.py
        # FIXME: If not needed, delete this function
        options = []
        return options

    def install_options(self, spec, prefix):
        # FIXME: Add options to pass to setup.py install
        # FIXME: If not needed, delete this function
        options = []
        return options
