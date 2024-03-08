# Copyright 2013-2023 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack.package import *


class Coverm(Package):

    homepage = "https://github.com/wwood/CoverM"
    url = "https://github.com/wwood/CoverM/archive/refs/tags/v0.6.1.tar.gz"

    version("0.6.1", sha256="b6211e6f89ef986691b910d7d7b4c6d1e9eb9beb64e4f71902178ed60d27f4e6")

    depends_on("rust")
    depends_on("samtools @1.9:", type=("build", "link", "run"))
    depends_on("minimap2 @2.0:", type=("build", "link", "run"))
    depends_on("bwa-mem2 @2.2.1:", type=("build", "link", "run"))
    depends_on("fastani @1.33:", type=("build", "link", "run"))
    depends_on("dashing @0.4.0", type=("build", "link", "run"))

    def install(self, spec, prefix):
        cargo = which("cargo")
        cargo("install", "--root", prefix, "--path", ".")
