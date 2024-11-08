# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

import glob
import os

from spack.package import *


class GenemarkEtp(Package):
    """Gene Prediction in Bacteria, archaea, Metagenomes and
    Metatranscriptomes.
    When downloaded this file is named the same for all versions.
    Spack will search your current directory for the download file.
    Alternatively, add this file to a mirror so that Spack can find it.
    For instructions on how to set up a mirror, see
    https://spack.readthedocs.io/en/latest/mirrors.html"""

    homepage = "http://topaz.gatech.edu/GeneMark"
    url = "https://github.com/gatech-genemark/GeneMark-ETP/releases/download/etp-v1.02-preprint/GeneMark-ETP.tar.gz"

    version("1.02-preprint", sha256="331e9d05be8f2b806d90c0e1acdac444818b1fec4a4f7064d8de641b9073fa9d")

    depends_on("perl", type=("build", "run"))
    depends_on("perl-hash-merge", type=("build", "run"))
    depends_on("perl-parallel-forkmanager", type=("build", "run"))
    depends_on("perl-logger-simple", type=("build", "run"))
    depends_on("perl-mce", type=("build", "run"))
    depends_on("perl-thread-queue", type=("build", "run"))
    depends_on("perl-threads", type=("build", "run"))
    
    depends_on("perl-yaml-libyaml", type=("build", "run"))

    def install(self, spec, prefix):
        mkdirp(prefix.bin)
        mkdirp(prefix.tools)
        source_dir = self.stage.source_path
        
        with working_dir(source_dir):
            install_tree("bin", prefix.bin)
            install_tree("tools", prefix.tools)

    @run_after("install")
    def filter_sbang(self):
        with working_dir(self.prefix.bin):
            pattern = "^#!.*/usr/bin/env perl"
            repl = "#!{0}".format(self.spec["perl"].command.path)
            files = glob.iglob("*.pl")
            for file in files:
                filter_file(pattern, repl, *files, backup=False)

    def setup_run_environment(self, env):
        env.prepend_path("PERL5LIB", self.prefix.bin)
        env.prepend_path("PATH", self.prefix.tools)
