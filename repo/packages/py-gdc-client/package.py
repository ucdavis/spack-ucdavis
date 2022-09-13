# Copyright 2013-2021 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack import *


class PyGdcClient(PythonPackage):
    """The gdc-client provides several convenience functions
    over the GDC API which provides general download/upload via HTTPS."""

    homepage = "https://github.com/NCI-GDC/gdc-client"
    url      = "https://github.com/NCI-GDC/gdc-client/archive/1.4.0.tar.gz"

    version('1.6.0', sha256='021c54ff63babff59d15b5f3e9763f0fd18bb64a4a34bc273237e3571fb24889')
    version('1.4.0', sha256='3ae6664f9666c75ffbf3c883409cfa51333f61d23b7aa99010925a084b4c9582')    

    depends_on('py-setuptools', type='build')
