# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.autotools import AutotoolsPackage
from spack.package import *


class Htscodecs(AutotoolsPackage):
    """This repository implements the custom CRAM codecs used for "EXTERNAL" block types. These consist of two variants of the rANS codec (8-bit and 16-bit renormalisation, with run-length encoding and bit-packing also supported in the latter), a dynamic arithmetic coder, and custom codecs for name/ID compression and quality score compression derived from fqzcomp."""

    homepage = "https://github.com/samtools/htscodecs"
    url = "https://github.com/samtools/htscodecs/archive/refs/tags/v1.5.0.tar.gz"

    version("1.5.0", sha256="fb496943c78102688494d477bbbb8ea24be625065a0cfc36bb7f7840ed2c9066")

    depends_on("autoconf", type="build")
    depends_on("automake", type="build")
    depends_on("libtool", type="build")
    depends_on("m4", type="build")
    depends_on("bzip2")

    def autoreconf(self, spec, prefix):
        autoreconf("--install", "--verbose", "--force")
