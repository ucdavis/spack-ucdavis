# Copyright 2013-2021 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)


from spack import *


class Distangsd(MakefilePackage):
    """
    distAngsd is a software to simulate and infer phylogenetic relationships
    between two individuals, in which two novel methods (i.e., geno and nuc)
    are proposed. A bunch of other methods are also implemented, e.g., RandomSEQ,
    ConsensusSEQ, AmbiguityGT and NoAmbiguity for comparisons. The software can
    both conduct simulation and analyses real vcf/bcf file given reliable
    genotype likelihoods are calculated.

    The software can do 1-d simulation and inference (only genetic distance t
    estimation), 2-d simulation and inference (genetic distance t and invariable 
    sites proportion p_inv joint estimation), vcf file read and inference, genotype
    likelihood table read and inference. Both JC69 are GTR models can be considered.
    Genotype likelihood and inference logs can be recored either in the format of
    txt.gz or bin.
    
    NOTE: distAngsd did not provide any version numbers, so it is versioned by its
    git hash.
    """

    homepage = "https://github.com/lz398/distAngsd"
    git      = "https://github.com/lz398/distAngsd.git"

    maintainers = ['camillescott']

    version('main', branch='main')

    depends_on('htslib')
    depends_on('eigen')
    depends_on('gsl')
    depends_on('lzma')
    depends_on('openssl')


    def edit(self, spec, prefix):
        makefile = FileFilter('Makefile')
        makefile.filter('-lgsl', '-lgsl -lgslcblas -lssl -lcrypto')

    @property
    def build_targets(self):
        spec = self.spec

        return [
            'HTSSRC={0}'.format(spec['htslib'].prefix.lib),
            'EIGEN={0}'.format(spec['eigen'].prefix)
        ]

    def build(self, spec, prefix):
        make('clean')
        make(*self.build_targets)

    def install(self, spec, prefix):
        mkdirp(prefix.bin)
        install('distAngsd', prefix.bin)
