# Copyright 2013-2023 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack.package import *


class BppCore(CMakePackage):
    """Bio++ core library."""

    homepage = "http://biopp.univ-montp2.fr/wiki/index.php/Installation"
    url = "https://github.com/BioPP/bpp-core/archive/refs/tags/v2.4.1.tar.gz"
    git = "https://github.com/BioPP/bpp-core.git"

    maintainers = ["snehring"]

    version("2023-07-26", commit="fecd6f1c1896b81244d3fd396680c1a48b957eda")
    version("2.4.1", sha256="1150b8ced22cff23dd4770d7c23fad11239070b44007740e77407f0d746c0af6")
    version(
        "2.2.0",
        sha256="aacd4afddd1584ab6bfa1ff6931259408f1d39958a0bdc5f78bf1f9ee4e98b79",
        deprecated=True,
    )

    depends_on("cmake@2.6:", type="build")

    # Clarify isnan's namespace, because Fujitsu compiler can't
    # resolve ambiguous of 'isnan' function.
    patch("clarify_isnan.patch", when="%fj")

    # This is fixed in master, next release should be fine
    patch("global-graph-limits.patch", when="@2.4.1")

    def cmake_args(self):
        return ["-DBUILD_TESTING=FALSE"]

    def setup_dependent_build_environment(self, env, dependent_spec):
        env.prepend_path("CMAKE_PREFIX_PATH", self.prefix)
