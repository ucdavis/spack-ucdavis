# Copyright Spack Project Developers. See COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.generic import Package

from spack.package import *


class PlinkNg(Package):
    """A comprehensive update to the PLINK association analysis toolset."""

    homepage = "https://www.cog-genomics.org/plink/2.0/"
    # HPCCF: URL in builtin is out of date, version weird/wrong
    url = "https://github.com/chrchang/plink-ng/archive/refs/tags/v2.00a3.7.tar.gz"
    version('2.00a3.7', sha256='145717350205f5562a01292a0fcbd617b7500758f20cad0393c7cc54665a614e')

    depends_on("zlib-api")
    depends_on("zstd@1.4.4:")
    depends_on("cblas")
    depends_on("blas")
    depends_on("lapack")

    conflicts("%gcc@:4")

    def setup_build_environment(self, env: EnvironmentModifications) -> None:
        zlib = join_path(self.spec["zlib-api"].prefix.lib, "libz.a")
        env.set("ZLIB", zlib)

    def install(self, spec, prefix):
        ld_flags = [spec["lapack"].libs.ld_flags, spec["blas"].libs.ld_flags]
        with fs.working_dir('2.0'):
            filter_file("-llapack -lcblas -lblas", " ".join(ld_flags), "build.sh", string=True)
            which("sh")("build.sh")
            install_tree(".", prefix)
