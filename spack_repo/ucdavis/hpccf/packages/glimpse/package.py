# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.generic import Package
from spack.package import *
import os

class Glimpse(Package):
    """GLIMPSE is a set of tools for phasing and imputation for low-coverage sequencing datasets."""

    homepage = "https://odelaneau.github.io/GLIMPSE"
    url = "https://github.com/odelaneau/GLIMPSE/archive/refs/tags/v1.1.1.tar.gz"

    version("1.1.1", sha256="ae3b4349c02f589022d5f22083f81e7a82dc93daf8c29d9beeeb7f8d34f80465")

    projects = [
        'chunk',
        'concordance',
        'ligate',
        'phase',
        'sample',
        'snparray',
        'stats',
    ]
        
    
    def install(self, spec, prefix):
        # This is a bit evil. It just installs the precompiled, static binaries, that are shipped with the source.
        mkdir(prefix.bin)
        for p in Glimpse.projects:
            os.rename(join_path("static_bins", f"GLIMPSE_{p}_static"),
                      join_path("static_bins", f"GLIMPSE_{p}"))
            install(join_path("static_bins", f"GLIMPSE_{p}"), prefix.bin)
