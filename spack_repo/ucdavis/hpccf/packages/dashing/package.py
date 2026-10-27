# Copyright 2013-2023 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

import shutil

from spack_repo.builtin.build_systems.makefile import MakefilePackage

from spack.package import *


class Dashing(MakefilePackage):
    """dashing sketches and computes distances between fasta and fastq data."""

    homepage = "https://github.com/dnbaker/dashing"
    git = "https://github.com/dnbaker/dashing"

    maintainers("camillescott")

    version("1.0.3",
            submodules=True,
            commit="04edb794b85944e9f4a9abeaca19be2baa745d79")

    version("0.5.7b",
            submodules=True,
            commit="9de3dda38f2c212d7ce155c5596d737d78b54eaa")

    version("0.4.0",
            submodules=True,
            get_full_repo=True,
            commit="c4f9c1353892161ce83f373ca6dd02febe353bb8")

    depends_on("c", type="build")
    depends_on("cxx", type="build")
    depends_on("git", type="build", when="@0.4.0")

    conflicts("%gcc@8:", when="@:1")

    build_targets = ["dashing"]
    no_cache = True

    def setup_build_environment(self, env: EnvironmentModifications) -> None:
        env.set("PREFIX", self.prefix)

    def build(self, spec, prefix):
        if spec.satisfies("@0.4.0"):
            zstd_path = join_path("bonsai", "zstd")
            shutil.rmtree(zstd_path, ignore_errors=True)
            git = which("git", required=True)
            git("clone", "--recursive", "--single-branch", "--branch", "dev",
                "https://github.com/facebook/zstd", zstd_path)
            with working_dir(zstd_path):
                make("lib")
            shutil.move(join_path(zstd_path, "lib", "libzstd.a"), "bonsai")
        make()

    def install(self, spec, prefix):
        make("PREFIX={0}".format(prefix), "install")
