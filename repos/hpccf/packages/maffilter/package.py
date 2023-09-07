# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)


import os

from spack.package import *


class Maffilter(CMakePackage):
    """MafFilter is a program dedicated to the analysis of genome 
    alignments. It parses and manipulates MAF files as well as more 
    simple fasta files. Despite various filtering options and format
    conversion tools, MafFilter can compute a wide range of statistics
    (phylogenetic trees, nucleotide diversity, inferrence of selection,
    etc.)."""

    homepage = "https://jydu.github.io/maffilter"
    url = "https://github.com/jydu/maffilter/tarball/master"

    maintainers = ["camillescott"]

    version("1.3.1", sha256="27a4cf02cf6cb28a23bbd69c6a24f0d7885140f7d08322d9eae4b2c312ab7384")

    depends_on("bpp-core @2023-07-26:")
    depends_on("bpp-seq @2023-04-24:")
    depends_on("bpp-seq-omics @2023-05-07:")
    depends_on("bpp-phyl @2023-09-04:")
    depends_on("bpp-phyl-omics @2023-04-17:")
    depends_on("bpp-popgen @2023-05-07:")
    depends_on("boost +iostreams")
    depends_on("eigen")

