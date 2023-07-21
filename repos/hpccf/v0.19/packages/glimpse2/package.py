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
#     spack install glimpse
#
# You can edit this file again by typing:
#
#     spack edit glimpse
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class Glimpse2(MakefilePackage):
    """GLIMPSE2 is a set of tools for phasing and imputation for low-coverage sequencing datasets."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://odelaneau.github.io/GLIMPSE"
    url = "https://github.com/odelaneau/GLIMPSE/archive/refs/tags/v2.0.0.tar.gz"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("2.0.0", sha256="9babfdbb4907d3528f16494f8913abb2b72676710a984becfeabe5f51c354854")

    # depends_on("foo")
    depends_on("htslib@1.7:", type='build')
    depends_on("boost@1.65: +iostreams +program_options +serialization", type='build')
    depends_on("xz", type='build')
    depends_on("bzip2", type='build')
    depends_on("curl", type='build')
    depends_on("libdeflate", type='build')

    projects = [
        'chunk',
        'concordance',
        'ligate',
        'phase',
        'split_reference',
    ]
        
    
    def edit(self, spec, prefix):
        # unil-dcsr seems to be a more cluster friendly build.
        env['COMPILATION_ENV'] = 'unil-dcsr'
        
        env['HTSLIB_ROOT'] = spec['htslib'].prefix
        env['BOOST_ROOT'] = spec['boost'].prefix
        env['XZ_ROOT'] = spec['xz'].prefix
        env['BZIP2_ROOT'] = spec['bzip2'].prefix
        env['CURL_ROOT'] = spec['curl'].prefix

        for mf in Glimpse2.projects:
            makefile = FileFilter(join_path(mf, 'makefile'))
            makefile.filter(r"(unil-dcsr: DYN_LIBS=.*)",  r"\1 -ldeflate")

            
    def make(self, spec, prefix):
        for p in Glimpse2.projects:
            with working_dir(p):
                make('unil-dcsr')
                make(f"bin/GLIMPSE2_{p}")

            
    def install(self, spec, prefix):
        mkdir(prefix.bin)
        for p in Glimpse2.projects:
            install(join_path(p, "bin", f"GLIMPSE2_{p}"), prefix.bin)
