# Copyright 2013-2021 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RPander(RPackage):
    """pander: An R 'Pandoc' Writer

Contains some functions catching all messages, 'stdout' and other useful information while evaluating R code and other helpers to return user specified text elements (like: header, paragraph, table, image, lists etc.) in 'pandoc' markdown or several type of R objects similarly automatically transformed to markdown format. Also capable of exporting/converting (the resulting) complex 'pandoc' documents to e.g. HTML, 'PDF', 'docx' or 'odt'. This latter reporting feature is supported in brew syntax or with a custom reference class with a smarty caching 'backend'."""

    homepage = "https://rapporter.github.io/pander/"
    cran     = "pander"

    version('0.6.5', sha256='2add076bd2ca6749715a044e26baf1e0aee5d50211903ee6bfceecc30b9e9f90')

    depends_on('r-digest', type=('build', 'run'))
    depends_on('r-rcpp', type=('build', 'run'))
