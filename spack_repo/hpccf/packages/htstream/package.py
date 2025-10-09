# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack.package import *


class Htstream(CMakePackage):
    """HTStream is a quality control and processing pipeline for High Throughput Sequencing data."""

    homepage = "https://s4hts.github.io/HTStream/"
    url = "https://github.com/s4hts/HTStream/archive/refs/tags/v1.3.3.tar.gz"

    maintainers = ["camillescott"]

    version("1.3.3", sha256="1cccafd926615877a8b48cdd8efc118ad90289b378d86fd9c3c8368011419f4c")

    depends_on("boost@1.56: +system +program_options +iostreams +filesystem", type=("build", "link"))

    def cmake_args(self):
        # FIXME: Add arguments other than
        # FIXME: CMAKE_INSTALL_PREFIX and CMAKE_BUILD_TYPE
        # FIXME: If not needed delete this function
        args = []
        return args
