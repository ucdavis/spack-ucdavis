# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)


from spack.package import *


class Ngsrelate(MakefilePackage):
    """NgsRelate, which can be used to infer relatedness, inbreeding coefficients and many other summary statistics for pairs of individuals from low coverage Next Generation Sequencing (NGS) data by using genotype likelihoods instead of called genotypes."""

    homepage = "https://github.com/ANGSD/NgsRelate"
    url = "https://github.com/ANGSD/NgsRelate/archive/refs/tags/v2.0.tar.gz"

    maintainers = ['OmenWild']

    version("2.0", sha256="f2c20228720298d6ef2fd34324449ba7ebdd4b987477c78bd20ed99f176218c6")

    depends_on("htslib")
    depends_on("openssl")
    depends_on('libdeflate')

    @property
    def build_targets(self):
        return [
            'HTSSRC={0}'.format(self.spec['htslib'].prefix.lib),
        ]

    def edit(self, spec, prefix):
        filter_file(
            r"^(.*-o\s+ngsRelate.*)",
            r"\1 -lcrypto -ldeflate",
            "Makefile"
        )

    def install(self, spec, prefix):
        mkdirp(prefix.bin)
        install('ngsRelate', prefix.bin)
