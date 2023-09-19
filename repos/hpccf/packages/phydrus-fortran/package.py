# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

import os
import shutil

from spack.package import *


class PhydrusFortran(MakefilePackage):
    """Phydrus optimised Fortran code for the Hydrus-1D Model.."""

    homepage = "https://phydrus.readthedocs.io/en/latest/index.html"

    maintainers = ["camillescott"]

    version("0.2.0",
            sha256="eea3ae595189c75f1c0cc22dc4dd133b2ecbd6cc26be6baeaeb10a2b79cd8b2f",
            url="https://github.com/phydrus/source_code/tarball/b984da66a5b86f46f6b576dea0bf200d0c346f82")


    def edit(self, spec, prefix):
        makefile = FileFilter("makefile")
        makefile.filter("CC = .*", "CC = {0}".format(self.compiler.f77))

    def build(self, spec, prefix):
        shutil.copyfile('makefile', os.path.join('source', 'makefile'))
        with working_dir('source'):
            make()

    def install(self, spec, prefix):
        mkdirp(prefix.bin)
        install(os.path.join('source', 'hydrus'), prefix.bin)

    def setup_dependent_run_environment(self, env, dependent_spec):
        env.set("HYDRUS_BINARY", os.path.join(self.prefix.bin, 'hydrus'))

    def setup_run_environment(self, env):
        env.set("HYDRUS_BINARY", os.path.join(self.prefix.bin, 'hydrus'))

