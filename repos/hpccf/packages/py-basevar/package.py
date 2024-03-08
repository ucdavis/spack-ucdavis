# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)


from spack.package import *


class PyBasevar(PythonPackage):
    """Call variants for ultra low-pass (<1.0x) WGS data, especially for NIPT data."""

    homepage = "https://github.com/ShujiaHuang/basevar"

    url = "https://github.com/ShujiaHuang/basevar/archive/refs/tags/v0.8.0.tar.gz"

    maintainers("camillescott")

    version("0.8.0", sha256="3f860a997b2e4530c7ebc5c46b616104040f7b5b44f6b42fa2e7bb6a0d92314b")

    depends_on("python@2.7,3.7:3.8", type=("build", "run"))
    depends_on("py-cython@0.29.6:0.29.36", type="build")
    depends_on("py-setuptools", type="build")

    depends_on("py-logbook@1.4.3:", type=("build", "run"))
    depends_on("py-numpy@1.15.4:", type=("build", "run"))
    depends_on("py-scikit-learn@0.20.2:", type=("build", "run"))
    depends_on("py-scipy@1.1.0:", type=("build", "run"))

    depends_on("htslib@1.3:1.9")

