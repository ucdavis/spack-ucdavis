# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

# ----------------------------------------------------------------------------
# If you submit this package back to Spack as a pull request,
# please first remove this boilerplate and all FIXME comments.
#
# This is a template package file for Spack.  We've put "FIXME"
# next to all the things you'll want to change. Once you've handled
# them, you can save this file and test your package like this:
#
#     spack install r-gt
#
# You can edit this file again by typing:
#
#     spack edit r-gt
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RGt(RPackage):
    """Build display tables from tabular data with an easy-to-use set of functions. With its progressive approach, we can construct display tables with a cohesive set of table parts. Table values can be formatted using any of the included formatting functions. Footnotes and cell styles can be precisely added through a location targeting system. The way in which 'gt' handles things for you means that you don't often have to worry about the fine details."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://gt.rstudio.com/, https://github.com/rstudio/gt"
    cran = "gt"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("0.7.0", sha256="d855b1a5e3f84080aed767da362ff493e6a32352e91094b9deac39e97bed6903")

    depends_on("r-base64enc", type=("build", "run"))
    depends_on("r-bitops", type=("build", "run"))
    depends_on("r-cli", type=("build", "run"))
    depends_on("r-commonmark", type=("build", "run"))
    depends_on("r-dplyr", type=("build", "run"))
    depends_on("r-fs", type=("build", "run"))
    depends_on("r-ggplot2", type=("build", "run"))
    depends_on("r-glue", type=("build", "run"))
    depends_on("r-htmltools", type=("build", "run"))
    depends_on("r-magrittr", type=("build", "run"))
    depends_on("r-rlang", type=("build", "run"))
    depends_on("r-sass", type=("build", "run"))
    depends_on("r-scales", type=("build", "run"))
    depends_on("r-stringr", type=("build", "run"))
    depends_on("r-tibble", type=("build", "run"))
    depends_on("r-tidyselect", type=("build", "run"))
