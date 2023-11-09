# Copyright 2013-2023 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack.package import *


class BppPopgen(CMakePackage):
    """The Bio++ Population Genetics Library"""

    homepage = "https://https://github.com/BioPP/bpp-popgen"
    url = "https://github.com/BioPP/bpp-popgen/archive/refs/tags/v2.4.1.tar.gz"
    git = "https://github.com/BioPP/bpp-popgen.git"

    maintainers = ["snehring"]

    version("2023-05-07", commit="4ed20e21211b8fa19226c9151b9a6d1f014ed201")
    version("2.4.1", sha256="03b57d71a63c8fa7f11c085e531d0d691fc1d40d4ea541070dabde0ab3baf413")

    depends_on("bpp-seq")
    depends_on("bpp-phyl")
    
    def setup_dependent_build_environment(self, env, dependent_spec):
        env.prepend_path("CMAKE_PREFIX_PATH", self.prefix)

