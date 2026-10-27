# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

import os.path

from spack_repo.builtin.build_systems.r import RPackage
from spack.package import *


class RGgbiplot(RPackage):
    """An implementation of the biplot using ggplot2."""

    homepage = "https://github.com/vqv/ggbiplot"
    manual_download = True

    # FIXME: Add proper versions and checksums here.
    # version("1.2.3", "0123456789abcdef0123456789abcdef")
    version("7325e88", sha256='4220e9cd7c73ceab8343063f93afd4d90a41a4dc8919df2533810720a0005f78')

    def url_for_version(self, version):
        return "file://{0}/spack-ucdavis/repos/hpccf/files/ggbiplot-{1}.zip".format(os.path.expanduser('~'), version)
            
    depends_on("r-ggplot2", type=("build", "run"))
    depends_on("r-plyr", type=("build", "run"))
    depends_on("r-scales", type=("build", "run"))
