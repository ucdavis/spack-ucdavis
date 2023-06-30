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
#     spack install turbovnc
#
# You can edit this file again by typing:
#
#     spack edit turbovnc
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class Turbovnc(CMakePackage):
    """TurboVNC is a derivative of VNC (Virtual Network Computing) that is tuned to provide peak performance for 3D and video workloads."""

    homepage = "https://turbovnc.org/Main/HomePage"
    url = "https://github.com/TurboVNC/turbovnc/archive/refs/tags/3.0.3.tar.gz"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("3.0.3", sha256="3a3e1bce1d6d41b33b52c51c8546c849db1226f42255f4cef306e7bd9e1cced4")

    variant("libjpeg-turbo", default=True, description="build with libjpeg-turbo support")

    depends_on("libjpeg-turbo@2.1:")
    depends_on("openjdk@11:")
    depends_on("virtualgl", type="run")

    def cmake_args(self):
        args = [
            self.define('G', "NMake Makefiles"),
            self.define('CMAKE_BUILD_TYPE', 'Release'),
        ]

        if '+libjpeg-turbo' in self.spec:
            args += [
                self.define('TJPEG_INCLUDE_DIR', f"{self.spec['libjpeg-turbo'].prefix.include}"),
                self.define('TJPEG_LIBRARY', f"{self.spec['libjpeg-turbo'].prefix.lib}/libturbojpeg.so"),
                ]

        return args

    def patch(self):
        """Lock the security down a little better by tweaking the defaults."""
        
        security_file = 'unix/turbovncserver-security.conf'
        
        filter_file(r"^#max-idle-timeout = 86400", "max-idle-timeout = 900", security_file)
        filter_file(r"^#no-pam-sessions", "no-pam-sessions", security_file)
        filter_file(r"^#no-reverse-connections", "no-reverse-connections", security_file)
        filter_file(r"^#no-x11-tcp-connections", "no-x11-tcp-connections", security_file)
        filter_file(r"^#permitted-security-types.*", "permitted-security-types = TLSVnc, OTP", security_file)
        
