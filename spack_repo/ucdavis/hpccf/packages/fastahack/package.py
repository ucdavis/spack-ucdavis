# Copyright 2013-2024 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.autotools import AutotoolsPackage
from spack.package import *


class Fastahack(AutotoolsPackage):
    """fastahack is a small application for indexing and extracting sequences and subsequences from FASTA files."""

    homepage = "https://github.com/ekg/fastahack/"
    url = "https://github.com/ekg/fastahack/archive/refs/tags/v1.0.0.tar.gz"

    license("MIT")

    version("1.0.0", sha256="cc1c04729b0c8ba3647cbb7e15e2b490ce701d73773f30f5892d68c36a1dceae")

    depends_on("c", type="build")
    depends_on("cxx", type="build")

    depends_on("autoconf", type="build")
    depends_on("automake", type="build")
    depends_on("libtool", type="build")
    depends_on("m4", type="build")

    patch("autoconf.patch", when="@1.0.0")

    def autoreconf(self, spec, prefix):
        autoreconf("--install", "--verbose", "--force")
