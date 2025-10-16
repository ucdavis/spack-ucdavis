# Copyright 2013-2024 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack_repo.builtin.build_systems.generic import Package
from spack.package import *


class Mlxup(Package):
    """A firmware update and query utility. The utility enables scanning the server 
    machine for available NVIDIA adapters and indicates whether firmware update is 
    required for each adapter. To make it easier for our customers the mlxup can also
    automatically update the latest firmware either from the web, or use binaries 
    provided locally."""

    homepage = "https://network.nvidia.com/support/firmware/mlxup-mft/"
    url = "https://www.mellanox.com/downloads/firmware/mlxup/4.30.0/SFX/linux_x64/mlxup"

    license("UNKNOWN", checked_by="camillescott")

    version("4.30.0",
            expand=False,
            sha256="7e6e631a3539abfed1e06cf2d9e613d8e3bcc856104925a6ef41e5e206b1d201")

    def url_for_version(self, version):
        return f'https://www.mellanox.com/downloads/firmware/mlxup/{version}/SFX/linux_x64/mlxup'

    def install(self, spec, prefix):
        mkdirp(prefix.bin)
        set_executable('mlxup')
        install('mlxup', prefix.bin)
