# Copyright 2013-2021 Lawrence Livermore National Security, LLC and other
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
#     spack install py-gatb-minia-pipeline
#
# You can edit this file again by typing:
#
#     spack edit py-gatb-minia-pipeline
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack import *


class PyGatbMiniaPipeline(PythonPackage):
    """GATB-Minia-Pipeline is a de novo assembly pipeline for Illumina data. It can assemble genomes and metagenomes. It is multi-k, to aim for high contiguity. Similar software: MEGAHIT, metaSPAdes."""

    homepage = "https://github.com/GATB/gatb-minia-pipeline"
    url      = "https://github.com/GATB/gatb-minia-pipeline"
    git      = "https://github.com/GATB/gatb-minia-pipeline.git"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ['github_user1', 'github_user2']

    # FIXME: Add proper versions and checksums here.
    version('2020-04-01', commit='831ba4e8812aaed9f4ae1f00f9d8bf77439ba13f')
    
    # FIXME: Add dependencies if required. Only add the python dependency
    # if you need specific versions. A generic python dependency is
    # added implicity by the PythonPackage class.
    # depends_on('python@2.X:2.Y,3.Z:', type=('build', 'run'))
    # depends_on('py-setuptools', type='build')
    # depends_on('py-foo',        type=('build', 'run'))
    depends_on('python@2.7.18', type=('run'))
    
    def install(self, spec, prefix):
        mkdir(prefix.bin)
        install('gatb', prefix.bin)

    def build(self, spec, prefix):
        # No build, all pre-built
        pass
