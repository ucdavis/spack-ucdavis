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
#     spack install r-lsmeans
#
# You can edit this file again by typing:
#
#     spack edit r-lsmeans
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RLsmeans(RPackage):
    """Obtain least-squares means for linear, generalized linear, and mixed models. Compute contrasts or linear functions of least-squares means, and comparisons of slopes. Plots and compact letter displays. Least-squares means were proposed in Harvey, W (1960) "Least-squares analysis of data with unequal subclass numbers", Tech Report ARS-20-8, USDA National Agricultural Library, and discussed further in Searle, Speed, and Milliken (1980) "Population marginal means in the linear model: An alternative to least squares means", The American Statistician 34(4), 216-221 <doi:10.1080/00031305.1980.10483031>. NOTE: lsmeans now relies primarily on code in the 'emmeans' package. 'lsmeans' will be archived in the near future."""

    homepage = "https://cran.r-project.org/web/packages/lsmeans/index.html"
    cran = "lsmeans"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("2.30-0", sha256="aef4c2fe4cb292edac79e83f50feac83429f6d7d50fe1780980eacf8dc6f65fc")

    # FIXME: Add dependencies if required.
    # depends_on("r-foo", type=("build", "run"))
    depends_on("r-emmeans", type=("build", "run"))
