# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

import os

from spack.package import *


class RelionBbr(CMakePackage, CudaPackage):
    """A modified version of Relion supporting block-based-reconstruction as
    described in 10.1038/s41467-018-04051-9."""

    homepage = "https://github.com/homurachan/Block-based-recontruction"
    git = "https://github.com/ucdavis/relion-bbr.git"

    version("3.1.2", commit="0538d86e3e9919f3971e02eb204091c57610bd5d")

    variant("gui", default=True, description="build the gui")
    variant("cuda", default=True, description="enable compute on gpu")
    variant("double", default=True, description="double precision (cpu) code")
    variant("double-gpu", default=False, description="double precision gpu")

    # if built with purpose=cluster then relion will link to gpfs libraries
    # if that's not desirable then use purpose=desktop
    variant(
        "purpose",
        default="cluster",
        values=("cluster", "desktop"),
        description="build relion for use in cluster or desktop",
    )

    variant(
        "build_type",
        default="RelWithDebInfo",
        description="The build type to build",
        values=("Debug", "Release", "RelWithDebInfo", "Profiling", "Benchmarking"),
    )

    # these new values were added in relion 3
    # do not seem to cause problems with < 3
    variant("mklfft", default=True, description="Use MKL rather than FFTW for FFT")
    #variant("amdfftw", default=False, description="Use AMD-optimized FFTW")
    variant(
        "allow_ctf_in_sagd",
        default=True,
        description=(
            "Allow CTF-modulation in SAGD, " "as specified in Claim 1 of patent US10,282,513B2"
        ),
    )
    variant("altcpu", default=False, description="Use CPU acceleration", when="~cuda")

    variant(
        "external_motioncor2",
        default=False,
        description="Have external motioncor2 available in addition to " "Relion builtin",
    )

    depends_on("mpi")
    depends_on("cmake@3:", type="build")
    depends_on("fftw-api precision=float,double", when="~mklfft")
    #depends_on("amdfftw precision=float,double", when="+amdfftw")

    # use the +xft variant so the interface is not so horrible looking
    depends_on("fltk+xft", when="+gui")

    depends_on("libtiff")
    depends_on("libpng", when="@4:")

    depends_on("cuda@9:11.6", when="+cuda")
    depends_on("tbb", when="+altcpu")
    depends_on("mkl", when="+mklfft")
    depends_on("ctffind", type="run")
    depends_on("motioncor2", type="run", when="+external_motioncor2")

    patch("0002-Simple-patch-to-fix-intel-mkl-linking.patch")

    def cmake_args(self):
        args = [
            "-DCMAKE_C_FLAGS=-g",
            "-DCMAKE_CXX_FLAGS=-g",
            "-DGUI=%s" % ("+gui" in self.spec),
            "-DDoublePrec_CPU=%s" % ("+double" in self.spec),
            "-DDoublePrec_GPU=%s" % ("+double-gpu" in self.spec),
            "-DALLOW_CTF_IN_SAGD=%s" % ("+allow_ctf_in_sagd" in self.spec),
            "-DMKLFFT=%s" % ("+mklfft" in self.spec),
            "-DALTCPU=%s" % ("+altcpu" in self.spec),
        ]

        if "+cuda" in self.spec:
            carch = self.spec.variants["cuda_arch"].value[0]

            # relion+cuda requires selecting cuda_arch
            if carch == "none":
                raise ValueError("Must select a value for cuda_arch")
            else:
                args += [
                    "-DCUDA=ON",
                    "-DCudaTexture=ON",
                    "-DCUDA_ARCH=%s" % (carch),
                ]

            if "+mklfft" not in self.spec and  int(carch) >= 11:
                args += [
                    "-DTHRUST_IGNORE_CUB_VERSION_CHECK=1"
                ]

        if "^amdfftw" in self.spec:
            args += [
                "-DAMDFFTW=ON"
            ]

        if "+altcpu" in self.spec:
            args += [
                "-DFORCE_OWN_TBB=OFF",
                self.define("TBB_INCLUDE_DIR", self.spec["tbb"].headers.directories[0]),
                self.define("TBB_LIBRARY", self.spec["tbb"].libs.directories[0])
            ]

        return args

    def patch(self):
        # Remove flags not recognized by the NVIDIA compilers
        if self.spec.satisfies("%nvhpc"):
            filter_file("-std=c99", "-c99", "src/apps/CMakeLists.txt")

        # set up some defaults
        filter_file(
            r"(#define DEFAULTQSUBLOCATION).*",
            r'\1 "{0}"'.format(join_path(self.spec.prefix.bin, "relion_qsub.csh")),
            join_path("src", "pipeline_jobs.h"),
        )
        filter_file(
            r"(#define DEFAULTCTFFINDLOCATION).*",
            r'\1 "{0}"'.format(join_path(self.spec["ctffind"].prefix.bin, "ctffind")),
            join_path("src", "pipeline_jobs.h"),
        )

        if "+external_motioncor2" in self.spec:
            filter_file(
                r"(#define DEFAULTMOTIONCOR2LOCATION).*",
                r'\1 "{0}"'.format(join_path(self.spec["motioncor2"].prefix.bin, "MotionCor2")),
                join_path("src", "pipeline_jobs.h"),
            )

        if "+cuda" in self.spec:
            carch = self.spec.variants["cuda_arch"].value[0]
            if int(carch) >= 11:
                # see: https://github.com/3dem/relion/commit/554e0ed993e5ac8a3fee4be7c5cf64a62216a8c7
                filter_file(r'^#define CUB_NS_QUALIFIER ::cub # for compatibility with CUDA 11.5',
                            r'#define CUB_NS_QUALIFIER ::cub // for compatibility with CUDA 11.5',
                            join_path("src", "acc", "cuda", "cuda_utils_cub.cuh"))

