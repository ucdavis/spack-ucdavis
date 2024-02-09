# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

import os

from spack.package import *


class Relion(CMakePackage, CudaPackage):
    """RELION (for REgularised LIkelihood OptimisatioN, pronounce rely-on) is a
    stand-alone computer program that employs an empirical Bayesian approach to
    refinement of (multiple) 3D reconstructions or 2D class averages in
    electron cryo-microscopy (cryo-EM)."""

    homepage = "http://www2.mrc-lmb.cam.ac.uk/relion"
    git = "https://github.com/3dem/relion.git"
    url = "https://github.com/3dem/relion/archive/3.1.3.zip"

    version("5.0-beta", commit="90d239eda870d64834e642aaa19ce3e6d0ab5ab0")
    version("4.0.1",
            commit="ec417f5",
            preferred=True)

    version("4.0.0", commit="04079953afd9f74c8705e24004091575b4fd71e0")

    version("3.1.3", sha256="e67277200b54d1814045cfe02c678a58d88eb8f988091573453c8568bfde90fc")
    version("3.1.2", sha256="dcdf6f214f79a03d29f0fed2de58054efa35a9d8401543bdc52bfb177987931f")
    version("3.1.1", sha256="63e9b77e1ba9ec239375020ad6ff631424d1a5803cba5c608c09fd44d20b1618")
    version("3.1.0", sha256="8a7e751fa6ebcdf9f36046499b3d88e170c4da86d5ff9ad1914b5f3d178867a8")

    # 3.0.8 latest release in 3.0 branch
    version("3.0.8", sha256="18cdd58e3a612d32413eb37e473fe8fbf06262d2ed72e42da20356f459260973")
    version("3.0.7", sha256="a6d37248fc4d0bfc18f4badb7986dc1b6d6849baa2128b0b4dade13cb6991a99")

    # relion master contains development code
    # contains 3.0 branch code
    version("master")

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
        description="Have external motioncor2 available in addition to Relion builtin",
    )
    variant(
        "gctf",
        default=False,
        description="Install gctf dependency (requires manual download)"
    )

    variant("gpu_delay", default=False, description="Delay GPU start to alleviate power spikes.")
    variant("conda_python", 
            default='CONDA_PYTHON', 
            validator=lambda cls_name, var_name, v: os.path.isfile(v[0]) and os.access(v[0], os.X_OK),
            when="@5:")
    variant("torch_home",
            default='TORCH_HOME',
            when="@5:")

    depends_on("mpi")
    depends_on("cmake@3:", type="build")
    depends_on("fftw-api precision=float,double", when="~mklfft")
    #depends_on("amdfftw precision=float,double", when="+amdfftw")

    # use the +xft variant so the interface is not so horrible looking
    depends_on("fltk+xft", when="+gui")

    depends_on("libtiff")
    depends_on("libpng", when="@4:")

    depends_on("cuda", when="+cuda")
    depends_on("cuda@9:", when="@3: +cuda")
    depends_on("tbb", when="+altcpu")
    depends_on("mkl", when="+mklfft")
    depends_on("ctffind", type="run")
    depends_on("motioncor2", type="run", when="+external_motioncor2")
    depends_on("gctf", type="run", when="+gctf")

    # TODO: more externals to add
    # Spack packages needed
    # - ResMap
    patch("0002-Simple-patch-to-fix-intel-mkl-linking.patch", when="@:3.1.1 os=ubuntu18.04")
    patch("delay_gpu_start.patch", when="@4.0.0: +gpu_delay")

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

            if "+mklfft" not in self.spec and int(carch) >= 11:
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

        if 'conda_python' in self.spec.variants:
            args += [
                self.define_from_variant("PYTHON_EXE_PATH", "conda_python")
            ]

        if "torch_home" in self.spec.variants:
            args += [
                self.define_from_variant("TORCH_HOME_PATH", "torch_home")
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
