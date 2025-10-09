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
#     spack install r-flowsorted-blood-450k
#
# You can edit this file again by typing:
#
#     spack edit r-flowsorted-blood-450k
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RFlowsortedBlood450k(RPackage):
    """Raw data objects for the Illumina 450k DNA methylation microarrays, and an object depicting which CpGs on the array are associated with cell type."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://bioconductor.org/packages/release/data/experiment/html/FlowSorted.Blood.450k.html"
    url = "https://bioconductor.org/packages/release/data/experiment/src/contrib/FlowSorted.Blood.450k_1.36.0.tar.gz"
    bioc = "FlowSorted.Blood.450k"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("1.36.0", sha256="58e5c5cd4ee683c282b6e3d5cd7d126b95f460379d9c322df4e28d57aec649c1")

    depends_on("r-minfi", type=("build", "run"))
