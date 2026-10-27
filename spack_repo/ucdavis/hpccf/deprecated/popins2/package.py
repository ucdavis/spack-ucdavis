# Copyright 2013-2021 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack.package import *
from spack_repo.builtin.build_systems.makefile import MakefilePackage


class Popins2(MakefilePackage):
    """Population-scale detection of non-reference sequence variants using colored de Bruijn Graphs"""

    homepage = "https://github.com/kehrlab/PopIns2"
    url      = "https://github.com/kehrlab/PopIns2"
    git      = "https://github.com/kehrlab/PopIns2.git"

    version('0.13.0-47964d4', commit="47964d4a4bed073cd2dac347182726d628f7e85a", submodules=True, get_full_repo=True)

    depends_on('bifrost@1.0.4 MAX_KMER_SIZE=64')
    depends_on('bwa@0.7.15')
    depends_on('samtools@1.5')
    depends_on('sickle@1.33')
    depends_on('spades')
    depends_on('velvet')
    depends_on('py-gatb-minia-pipeline')

    def install(self, spec, prefix):
        mkdir(prefix.bin)
        install('popins2', prefix.bin)
    
    def edit(self, spec, prefix):
        mkdir('build')
        
        bifrost = self.spec['bifrost'].prefix
        bwa = self.spec['bwa'].prefix
        samtools = self.spec['samtools'].prefix
        sickle = self.spec['sickle'].prefix
        spades = self.spec['spades'].prefix
        velvet = self.spec['velvet'].prefix
        gatb = self.spec['py-gatb-minia-pipeline'].prefix

        # makefile = FileFilter('Makefile')
        # makefile.filter('CC = .*', 'CC = cc')
        
        config = [
            'SAMTOOLS := {0}'.format(samtools),
            'BWA := {0}'.format(bwa),
            'SICKLE := {0}'.format(sickle),
            'VELVETH := {0}/bin/velveth'.format(velvet),
            'VELVETG := {0}/bin/velvetg'.format(velvet),
            'SPADES := {0}'.format(spades),
            'MINIA := {0}/gatb'.format(gatb.bin),
        ]
    
        with open('popins2.config', 'w') as inc:
            for var in config:
                inc.write('{0}\n'.format(var))
                
        popins2_config = FileFilter('popins2.config')
        

