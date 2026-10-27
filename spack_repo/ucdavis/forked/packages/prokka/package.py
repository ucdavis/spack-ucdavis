# Copyright Spack Project Developers. See COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

# UC Davis fork of builtin @ v2026.10.0: dependencies are also build deps so that
# `prokka --setupdb` can run at install time to index the bundled databases.

from spack_repo.builtin.build_systems.generic import Package

from spack.package import *


class Prokka(Package):
    """Prokka is a software tool to annotate bacterial, archaeal and viral
    genomes quickly and produce standards-compliant output files."""

    homepage = "https://github.com/tseemann/prokka"
    url = "https://github.com/tseemann/prokka/archive/v1.14.5.tar.gz"

    version("1.14.6", sha256="f730b5400ea9e507bfe6c5f3d22ce61960a897195c11571c2e1308ce2533faf8")

    depends_on("perl", type=("build", "run"))
    depends_on("perl-bioperl", type=("build", "run"))
    depends_on("perl-xml-simple", type=("build", "run"))
    depends_on("perl-bio-searchio-hmmer", type=("build", "run"))
    depends_on("hmmer", type=("build", "run"))
    depends_on("blast-plus", type=("build", "run"))
    depends_on("prodigal", type=("build", "run"))
    depends_on("tbl2asn", type=("build", "run"))

    def install(self, spec, prefix):
        install_tree("bin", prefix.bin)
        install_tree("binaries", prefix.binaries)
        install_tree("db", prefix.db)
        install_tree("doc", prefix.doc)
        prokka = which("prokka", path=prefix.bin, required=True)
        prokka("--setupdb")
