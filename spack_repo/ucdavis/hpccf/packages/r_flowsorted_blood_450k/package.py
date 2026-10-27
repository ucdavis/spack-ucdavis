# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RFlowsortedBlood450k(RPackage):
    """Raw data objects for the Illumina 450k DNA methylation microarrays, and an object depicting which CpGs on the array are associated with cell type."""

    homepage = "https://bioconductor.org/packages/release/data/experiment/html/FlowSorted.Blood.450k.html"
    url = "https://bioconductor.org/packages/release/data/experiment/src/contrib/FlowSorted.Blood.450k_1.36.0.tar.gz"
    bioc = "FlowSorted.Blood.450k"

    version("1.36.0", sha256="58e5c5cd4ee683c282b6e3d5cd7d126b95f460379d9c322df4e28d57aec649c1")

    depends_on("r-minfi", type=("build", "run"))
