# Copyright 2013-2024 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack.package import *


class CensorNorb(AutotoolsPackage):
    """censor compares and masks protein or nucleotide sequences."""

    homepage = "https://www.girinst.org/downloads/software/censor/"
    url = "https://www.girinst.org/downloads/software/censor/censor-norb-4.2.30.tar.gz"

    version("4.2.30", sha256="2a66902a859d819ddb69852dc6da2a12a88184f61dec6b45d223ebd0d0eeefe8")

    depends_on("ncbi-rmblastn", type=("build", "run"))
    depends_on("perl-bioperl", type=("build", "run"))
    depends_on("perl", type=("build", "run"))

    def setup_build_environment(self, env):
        env.set("PERL", self.spec["perl"].command.path)

    def setup_run_environment(self, env):
        env.prepend_path("PERL5LIB", self.spec["perl-bioperl"].prefix.lib.perl5)
