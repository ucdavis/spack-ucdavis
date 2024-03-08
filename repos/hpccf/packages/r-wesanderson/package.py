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
#     spack install r-wesanderson
#
# You can edit this file again by typing:
#
#     spack edit r-wesanderson
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RWesanderson(RPackage):
    """Palettes generated mostly from 'Wes Anderson' movies."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://github.com/karthik/wesanderson"
    cran = "wesanderson"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("0.3.6", sha256="22b6ea042a01d68a3bb471fc747f12c9beee61e1e4a4cf8ec0b2e12ac535b926")

    # FIXME: Add dependencies if required.
    # depends_on("r-foo", type=("build", "run"))
