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
#     spack install r-cmplot
#
# You can edit this file again by typing:
#
#     spack edit r-cmplot
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RCmplot(RPackage):
    """Manhattan plot, a type of scatter plot, was widely used to display the association results. However, it is usually time-consuming and laborious for a non-specialist user to write scripts and adjust parameters of an elaborate plot. Moreover, the ever-growing traits measured have necessitated the integration of results from different Genome-wide association study researches. Circle Manhattan Plot is the first open R package that can lay out. Genome-wide association study P-value results in both traditional rectangular patterns, QQ-plot and novel circular ones. United in only one bull's eye style plot, association results from multiple traits can be compared interactively, thereby to reveal both similarities and differences between signals. Additional functions include: highlight signals, a group of SNPs, chromosome visualization and candidate genes around SNPs."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://github.com/YinLiLin/CMplot"
    cran = "CMplot"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("4.2.0", sha256="4de69fc63acddc5b35488063d8864cabbf6d91883865edd9dba91fc9513e8bc5")

    # FIXME: Add dependencies if required.
    # depends_on("r-foo", type=("build", "run"))

    def configure_args(self):
        # FIXME: Add arguments to pass to install via --configure-args
        # FIXME: If not needed delete this function
        args = []
        return args
