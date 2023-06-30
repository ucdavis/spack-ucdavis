# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

#
# TODO: This is a backport! Remove when base spack is upgraded.
#

from spack.package import *


class Libheif(CMakePackage):
    """libheif is an HEIF and AVIF file format decoder and encoder."""

    homepage = "https://github.com/strukturag/libheif"
    url = "https://github.com/strukturag/libheif/archive/refs/tags/v1.12.0.tar.gz"

    version("1.12.0", sha256="086145b0d990182a033b0011caadb1b642da84f39ab83aa66d005610650b3c65")

    depends_on("cmake@3.13:", type="build")
