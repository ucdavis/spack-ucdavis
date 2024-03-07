# Copyright 2013-2023 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

import os

from spack.package import *


class Idl(Package):
    """IDL Software: Interactive Data Visulation.

    Note: IDL is a licensed software. You will also need an existing
    downloaded tarball of IDL in your current directory or in a
    spack mirror in order to install."""

    homepage = "https://www.harrisgeospatial.com/Software-Technology/IDL"
    manual_download = True

    # IDL licensing changed in 8.9, so the old flexlm license & server will no longer work.
    version("8.9", sha256="55c10a8ffc48d6f6cb219660dfc3f9b49010310cb9977eb0fd26f20e6e3ea655")
    
    version("8.7.3",
            sha256="295e3d8975bab96a707b8b976c4f17867d801447566723228e3c075643df31ea",
            preferred=True)
    
    maintainers("francinelapid")

    license_required = True
    license_files = ['license/o_licenseserverurl.txt']

    def url_for_version(self, version):
        return "file://{0}/idl-{1}.tar.gz".format(os.getcwd(), version)

    def install(self, spec, prefix):
        # replace default install dir to self.prefix by editing answer file
        os.chmod('silent/idl_answer_file', 0o0664)
        filter_file("/usr/local/harris", prefix, "silent/idl_answer_file")

        # execute install script
        install_script = Executable("./install.sh")
        install_script("-s", input="silent/idl_answer_file")

    def setup_run_environment(self, env):
        # set necessary environment variables
        env.prepend_path("EXELIS_DIR", self.prefix)
        env.prepend_path("IDL_DIR", self.prefix.idl)

        # add bin to path
        env.prepend_path("PATH", self.prefix.idl.bin)
