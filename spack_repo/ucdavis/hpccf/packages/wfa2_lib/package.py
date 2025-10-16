# Copyright 2013-2024 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

# ----------------------------------------------------------------------------
# If you submit this package back to Spack as a pull request,
# please first remove this boilerplate and all FIXME comments.
#
# This is a template package file for Spack.  We've put "FIXME"
# next to all the things you'll want to change. Once you've handled
# them, you can save this file and test your package like this:
#
#     spack install wfa2-lib
#
# You can edit this file again by typing:
#
#     spack edit wfa2-lib
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class Wfa2Lib(CMakePackage):
    """The wavefront alignment (WFA) algorithm is an exact gap-affine algorithm that takes advantage of homologous regions between the sequences to accelerate the alignment process."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://github.com/smarco/WFA2-lib"
    url = "https://github.com/smarco/WFA2-lib/archive/refs/tags/v2.3.5.tar.gz"

    license("MIT")

    version("2.3.5", sha256="2609d5f267f4dd91dce1776385b5a24a2f1aa625ac844ce0c3571c69178afe6e")

    depends_on("c", type="build")
    depends_on("cxx", type="build")

    # FIXME: Add dependencies if required.
    # depends_on("foo")

    def cmake_args(self):
        args = ['-DOPENMP=TRUE']
        return args
