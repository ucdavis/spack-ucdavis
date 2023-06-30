# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack.package import *


class Gffcompare(MakefilePackage):
    """Compare and evaluate the accuracy of RNA-Seq transcript assemblers 
    (Cufflinks, Stringtie); collapse (merge) duplicate transcripts from multiple
    GTF/GFF3 files (e.g. resulted from assembly of different samples);
    classify transcripts from one or multiple GTF/GFF3 files as they relate 
    to reference transcripts provided in a annotation file (also in GTF/GFF3 format)

    More details can be found in the paper: DOI: 10.12688/f1000research.23297.1"""

    homepage = "https://github.com/gpertea/gffcompare"
    url = "https://github.com/gpertea/gffcompare/archive/refs/tags/v0.12.6.tar.gz"

    maintainers = ["camillescott"]

    version("0.12.6", sha256="4e01344c533987a0a8227bfcca9d180504c1a1392aa343e1f6b0752341e712cf")

    resource(name="gclib",
             git="https://github.com/gpertea/gclib.git",
             tag="v0.12.7")

    patch("Makefile.patch")

    def install(self, spec, prefix):
        mkdirp(prefix.bin)
        install("gffcompare", prefix.bin)

