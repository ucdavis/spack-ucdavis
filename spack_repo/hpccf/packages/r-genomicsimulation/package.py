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
#     spack install r-genomicsimulation
#
# You can edit this file again by typing:
#
#     spack edit r-genomicsimulation
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RGenomicsimulation(RPackage):
    """This project is an R package that runs stochastic simulations of genetics in breeding schemes. The core of the package is written in C."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://github.com/vllrs/genomicSimulation"
    url = "https://github.com/vllrs/genomicSimulation/releases/download/v0.2.2/genomicSimulation_0.2.2.tar.gz"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("0.2.2", sha256="90c1e19e9b715dc6665a01faf4cf52785ec41d524266fef67accc835e0a4888f")

