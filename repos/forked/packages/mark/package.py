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
#     spack install bayenv2
#
# You can edit this file again by typing:
#
#     spack edit bayenv2
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

import os

from spack.package import *


class Mark(Package):
    """Program MARK, developed and maintained by Gary White (Colorado State University) is the most flexible, widely used application currently available for parameter estimation using data from marked individuals."""

    homepage = "http://www.phidot.org/software/mark/index.html"
    

    version("2023-04-10", sha256="9ab8c0c913188d0aabaf3acb3efa6c6e09764fd76cc1ff3909c9b2fd8d4bdaa2",
            url = "http://www.phidot.org/software/mark/downloads/files/mark.64.zip")

    def install(self, spec, prefix):
        mkdirp(prefix.bin)
        install('mark64', prefix.bin)

        with working_dir(prefix.bin):
            os.symlink('mark64', 'mark')
            os.chmod('mark64', 0o755)
        
