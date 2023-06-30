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
#     spack install r-ggbiplot
#
# You can edit this file again by typing:
#
#     spack edit r-ggbiplot
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

import os.path

from spack.package import *


class RGgbiplot(RPackage):
    """An implementation of the biplot using ggplot2."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://github.com/vqv/ggbiplot"
    manual_download = True

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    # FIXME: Add proper versions and checksums here.
    # version("1.2.3", "0123456789abcdef0123456789abcdef")
    version("7325e88", sha256='4220e9cd7c73ceab8343063f93afd4d90a41a4dc8919df2533810720a0005f78')

    def url_for_version(self, version):
        return "file://{0}/spack-ucdavis/repos/hpccf/files/ggbiplot-{1}.zip".format(os.path.expanduser('~'), version)
            
    # FIXME: Add dependencies if required.
    # depends_on("r-foo", type=("build", "run"))
    depends_on("r-ggplot2", type=("build", "run"))
    depends_on("r-plyr", type=("build", "run"))
    depends_on("r-scales", type=("build", "run"))
