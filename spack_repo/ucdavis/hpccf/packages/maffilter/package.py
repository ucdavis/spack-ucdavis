# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.cmake import CMakePackage
from spack.package import *


class Maffilter(CMakePackage):
    """MafFilter is a program dedicated to the analysis of genome 
    alignments. It parses and manipulates MAF files as well as more 
    simple fasta files. Despite various filtering options and format
    conversion tools, MafFilter can compute a wide range of statistics
    (phylogenetic trees, nucleotide diversity, inferrence of selection,
    etc.)."""

    homepage = "https://jydu.github.io/maffilter"
    url = "https://github.com/jydu/maffilter/archive/refs/tags/v1.3.1.tar.gz"

    maintainers("camillescott")

    version("1.3.1", sha256="b4a03152d6cb3fa78d6406a6500a89b76d4fb6ff1a0f7260939094a66453eb75")

    depends_on("c", type="build")
    depends_on("cxx", type="build")

    depends_on("bpp-core @2023-07-26:")
    depends_on("bpp-seq @2023-04-24:")
    depends_on("bpp-seq-omics @2023-05-07:")
    depends_on("bpp-phyl @2023-09-04:")
    depends_on("bpp-phyl-omics @2023-04-17:")
    depends_on("bpp-popgen @2023-05-07:")
    depends_on("boost +iostreams")
    depends_on("eigen")
