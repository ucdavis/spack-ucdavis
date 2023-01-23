# Copyright 2013-2023 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack.package import *


class PyRelionHelper(PythonPackage):
    """Utilities for Relion Cryo-EM data processing on clusters.
    """

    homepage = "https://github.com/ucdavis/relion-helper"
    git = "https://github.com/ucdavis/relion-helper.git"

    version('0.1',
            sha256='4dd05eec65a45034a2ee820a8d350fed1e3614aed45646647b45c726fd7f5e0d',
            url='https://github.com/ucdavis/relion-helper/tarball/6019d4c040bba065c9cbdb3b6575f052c4ade713',
            extension='tar.gz')

    depends_on("python@3.8:", type=("build", "run"))
    depends_on("py-rich", type=("build", "run"))
