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
    "7.0.8": {
        "Linux-x86_64": (
            "22db1e5f57861bc17d50b2895ca97825958752d9d3a802669de3f0b81850437c",
            "https://cdn.oxfordnanoportal.com/software/analysis/ont-dorado-server_7.0.8_linux64.tar.gz",
        ),
    },
}


class OntDoradoServer(Package):
    """Dorado: local accelerated basecalling for Nanopore data"""

    homepage = "https://community.nanoporetech.com/downloads/dorado/release_notes"
    preferred_ver = "7.0.8"

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
        install_tree("data", prefix.data)
        install_tree("lib", prefix.lib)
