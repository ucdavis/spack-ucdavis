# Copyright 2013-2023 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack.package import *


class BppPhyl(CMakePackage):
    """Bio++ phylogeny library."""

    homepage = "http://biopp.univ-montp2.fr/wiki/index.php/Installation"
    url = "https://github.com/BioPP/bpp-phyl/archive/refs/tags/v2.4.1.tar.gz"
    git = "https://github.com/BioPP/bpp-phyl.git"

    maintainers = ["snehring"]

    version("2023-09-04", commit="17da39da8c272115b2fb429cad82a8a73e88f51a")
    version("2.4.1", sha256="e7bf7d4570f756b7773904ffa600ffcd77c965553ddb5cbc252092d1da962ff2")
    version(
        "2.2.0",
        sha256="f346d87bbc7858924f3c99d7d74eb4a1f7a1b926746c68d8c28e07396c64237b",
        deprecated=True,
    )

    depends_on("cmake@2.6:", type="build")
    depends_on("bpp-core")
    depends_on("bpp-seq")
    depends_on("eigen")

    # Clarify isnan's namespace, because Fujitsu compiler can't
    # resolve ambiguous of 'isnan' function.
    patch("clarify_isnan.patch", when="%fj")

    def cmake_args(self):
        return ["-DBUILD_TESTING=FALSE"]
    
    def setup_dependent_build_environment(self, env, dependent_spec):
        env.prepend_path("CMAKE_PREFIX_PATH", self.prefix)

