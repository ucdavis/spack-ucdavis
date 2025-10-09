# Copyright 2013-2024 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack.package import *


class Virtualgl(CMakePackage):
    """VirtualGL redirects 3D commands from a Unix/Linux OpenGL application
    onto a server-side GPU and converts the rendered 3D images into a video
    stream with which remote clients can interact to view and control the
    3D application in real time."""

    homepage = "https://www.virtualgl.org/"
    url = "https://github.com/VirtualGL/virtualgl/releases/download/3.1.1/VirtualGL-3.1.1.tar.gz"

    license("LGPL-2.1-or-later")

    version("3.1.1", sha256="1e4fd7a78f29d07a689f601a6f3db81e4f2ecf4e29baddf7e6dec0cfc90d7345")
    version("2.5.2", sha256="4f43387678b289a24139c5b7c3699740ca555a9f10011c979e51aa4df2b93238")

    # This package will only work with libjpeg-turbo, not other jpeg providers
    depends_on("libjpeg-turbo")
    depends_on("libjpeg-turbo@3.0.4:", when="@3.1.1:")
    depends_on("glu")
