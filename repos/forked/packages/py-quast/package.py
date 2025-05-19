# Copyright 2013-2024 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack.package import *
from spack.pkg.builtin.boost import Boost


class PyQuast(PythonPackage):
    """Quality Assessment Tool for Genome Assemblies"""

    homepage = "https://cab.spbu.ru/software/quast"
    url = "https://github.com/ablab/quast/releases/download/quast_5.3.0/quast-5.3.0.tar.gz"

    license("GPL-2.0-only")

    version("5.3.0", sha256="ac9dba03ef9d0a51d7a9e2c56826104e78f340f6263a3ad393648442debc74ec")

    depends_on("c", type="build")  # generated
    depends_on("cxx", type="build")  # generated

    depends_on("boost@1.75.0:")

    # TODO: replace this with an explicit list of components of Boost,
    # for instance depends_on('boost +filesystem')
    # See https://github.com/spack/spack/pull/22303 for reference
    depends_on(Boost.with_default_variants)
    depends_on("perl@5.6.0:", type=("build", "run"))
    depends_on("python@3.3:", type=("build", "run"))
    depends_on("py-setuptools", type="build")
    depends_on("py-matplotlib", type=("build", "run"))
    depends_on("py-joblib", type=("build", "run"))
    depends_on("py-simplejson", type=("build", "run"))
    depends_on("java", type=("build", "run"))
    depends_on("perl-time-hires", type=("build", "run"))
    depends_on("gnuplot", type=("build", "run"))
    depends_on("mummer", type=("build", "run"))
    depends_on("bedtools2", type=("build", "run"))
    depends_on("bwa", type=("build", "run"))
    depends_on("glimmer", type=("build", "run"))
