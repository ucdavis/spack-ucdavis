# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

# ----------------------------------------------------------------------------
# If you submit this package back to Spack as a pull request,
# please first remove this boilerplate and all FIXME comments.
#
# This is a template package file for Spack.  We've put "FIXME"
# next to all the things you'll want to change. Once you've handled
# them, you can save this file and test your package like this:
#
#     spack install censor-norb
#
# You can edit this file again by typing:
#
#     spack edit censor-norb
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

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
