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
#     spack install muscle5
#
# You can edit this file again by typing:
#
#     spack edit muscle5
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

import os

from spack.package import *


class Muscle5(Package):
    """MUSCLE is widely-used software for making multiple alignments of biological sequences."""

    homepage = "https://drive5.com/muscle5"
    url = "https://github.com/rcedgar/muscle/archive/refs/tags/5.1.0.tar.gz"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("5.1.0", sha256="2bba8b06e3ccabf6465fa26f459763b2029d7e7b9596881063e3aaba60d9e87d")

    # FIXME: Add dependencies if required.
    # depends_on("foo")

    def install(self, spec, prefix):
        with working_dir(os.path.join(self.stage.source_path, 'src')):
            mkdirp(prefix.bin)
            make()
            
        install('src/Linux/muscle', prefix.bin)
