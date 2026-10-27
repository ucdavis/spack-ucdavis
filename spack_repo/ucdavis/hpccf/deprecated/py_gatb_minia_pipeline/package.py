# Copyright 2013-2021 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack.package import *
from spack_repo.builtin.build_systems.python import PythonPackage


class PyGatbMiniaPipeline(PythonPackage):
    """GATB-Minia-Pipeline is a de novo assembly pipeline for Illumina data. It can assemble genomes and metagenomes. It is multi-k, to aim for high contiguity. Similar software: MEGAHIT, metaSPAdes."""

    homepage = "https://github.com/GATB/gatb-minia-pipeline"
    url      = "https://github.com/GATB/gatb-minia-pipeline"
    git      = "https://github.com/GATB/gatb-minia-pipeline.git"

    version('2020-04-01', commit='831ba4e8812aaed9f4ae1f00f9d8bf77439ba13f')
    

    depends_on('python@2.7.18', type=('run'))
    
    def install(self, spec, prefix):
        mkdir(prefix.bin)
        install('gatb', prefix.bin)

    def build(self, spec, prefix):
        # No build, all pre-built
        pass
