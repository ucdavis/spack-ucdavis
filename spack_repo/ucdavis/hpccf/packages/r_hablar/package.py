# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RHablar(RPackage):
    """Simple tools for converting columns to new data types. Intuitive functions for columns with missing values."""

    homepage = "https://davidsjoberg.github.io/"
    cran = "hablar"

    version("0.3.0", sha256="53fba8e064e23a9d7453bb3e5d74a647663aac5cc402e326e4b24e71872df589")

    depends_on("r-dplyr", type=("build", "run"))
    depends_on("r-purrr", type=("build", "run"))
    depends_on("r-lubridate", type=("build", "run"))
