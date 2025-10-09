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
#     spack install r-contfrac
#
# You can edit this file again by typing:
#
#     spack edit r-contfrac
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RContfrac(RPackage):
    """Various utilities for evaluating continued fractions."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://github.com/RobinHankin/contfrac.git"
    cran = "contfrac"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("1.1-12", sha256="95bfc5e970513416c080486a1cd8dfd9f8d59fb691b02ef6ccbe0ce1ed61056b")

    # FIXME: Add dependencies if required.
    # depends_on("r-foo", type=("build", "run"))
