# Copyright 2013-2024 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)


from spack.package import *


class Gffread(MakefilePackage):
    """GFF/GTF utility providing format conversions, filtering, FASTA sequence extraction and more.
    The paper can be found at: DOI: 10.12688/f1000research.23297.1"""

    homepage = "https://github.com/gpertea/gffread"
    url = "https://github.com/gpertea/gffread/archive/refs/tags/v0.12.7.tar.gz"

    maintainers("camillescott")

    version("0.12.7", sha256="6f3417090b3beb74f435bf5d462c87475b3c704a8a0d71821f6c1321c47dbbbe")

    resource(name="gclib",
             git="https://github.com/gpertea/gclib.git",
             tag="v0.12.7")

    patch("Makefile.patch")

    def install(self, spec, prefix):
        mkdirp(prefix.bin)
        install("gffread", prefix.bin)
