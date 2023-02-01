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

    version('0.2',
            sha256='cf02f8054dfaf25b9270879e841b25ac9e48ecc37fff086395857cd1bd2362a2',
            url='https://github.com/ucdavis/relion-helper/tarball/fb7f8bc8e0f0369039580220e872141e6e4cbe94',
            extension='tar.gz')

    version('0.1',
            sha256='4dd05eec65a45034a2ee820a8d350fed1e3614aed45646647b45c726fd7f5e0d',
            url='https://github.com/ucdavis/relion-helper/tarball/6019d4c040bba065c9cbdb3b6575f052c4ade713',
            extension='tar.gz')

    depends_on("python@3.8:", type=("build", "run"))
    depends_on("py-rich", type=("build", "run"))
