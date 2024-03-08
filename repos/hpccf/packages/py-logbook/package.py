# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)


from spack.package import *


class PyLogbook(PythonPackage):
    """Logbook is a logging system for Python that replaces 
    the standard library’s logging module. It was designed 
    with both complex and simple applications in mind and 
    the idea to make logging fun."""

    homepage = "https://logbook.readthedocs.io/en/stable/"
    pypi = "Logbook/Logbook-1.7.0.post0.tar.gz"

    maintainers("camillescott")

    version("1.7.0.post0", sha256="a5e8016701ca3beea6a390b0ba1541037f663543ca508ccd36cfdc841639cdd7")
    version("1.5.3", sha256="66f454ada0f56eae43066f604a222b09893f98c1adc18df169710761b8f32fe8")

    depends_on("python@3.8:", type=("build", "run"), when="@1.6:")
    depends_on("python@2.7,3.4:3.6",  type=("build", "run"), when="@1.5.3")
    depends_on("py-cython", type="build")
    depends_on("py-cython@:0.29.36", type="build", when="@1.5.3")
    depends_on("py-setuptools", type="build")

