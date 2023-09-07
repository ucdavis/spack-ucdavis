# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

import platform

from spack.package import *

# If you need to add a new version, please be aware that:
#  - versions in the following dict are automatically added to the package
#  - version tuple must be in the form (checksum, url)
#  - checksum must be sha256
#  - package key must be in the form '{os}-{arch}' where 'os' is in the
#    format returned by platform.system() and 'arch' by platform.machine()
#  - the newest non-cuda version should be set as 'preferred_ver'
#  - a cuda dependency must be set for each new cuda version

_versions = {
    "0.3.4": {
        "Linux-x86_64": (
            "e703338820738a33da9e3f2622d2ce90c3f59c4e0c4c3bc3db0af3f767d5fa74",
            "https://cdn.oxfordnanoportal.com/software/analysis/dorado-0.3.4-linux-x64.tar.gz",
        ),
    },
}


class NanoporetechDorado(Package):
    """Dorado: local accelerated basecalling for Nanopore data"""

    homepage = "https://community.nanoporetech.com/downloads/dorado/release_notes"
    preferred_ver = "0.3.4"

    preferred_defined = False
    for ver, packages in _versions.items():
        key = "{0}-{1}".format(platform.system(), platform.machine())
        pkg = packages.get(key)
        if pkg:
            is_preferred = not preferred_defined and (ver == preferred_ver)
            if is_preferred:
                preferred_defined = True

            version(ver, sha256=pkg[0], url=pkg[1], preferred=is_preferred)

    depends_on("cuda@11.0.0:", type="run")

    def install(self, spec, prefix):
        install_tree("bin", prefix.bin)
        install_tree("lib", prefix.lib)
