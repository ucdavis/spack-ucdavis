# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

import glob
import os

from spack.package import *


class Motioncor2(Package):
    """MotionCor2 is a multi-GPU program that corrects beam-induced sample
    motion recorded on dose fractionated movie stacks. It implements a robust
    iterative alignment algorithm that delivers precise measurement and
    correction of both global and non-uniform local motions at
    single pixel level, suitable for both single-particle and
    tomographic images. MotionCor2 is sufficiently fast
    to keep up with automated data collection."""

    homepage = "http://msg.ucsf.edu/em/software"
    manual_download = True
    
    version("1.5.0", sha256="cdb7b9aceb42d52e2a4c7a5e80270371376aea412d21fa1f1f28d4cc71c81834")
    version("1.4.7", sha256="8c33969b10916835b55f14f3c370f67ebe5c4b2a9df9ec487c5251710f038e6b")

    # None of the below are available for download
    version(
        "1.1.0",
        "6e37e7ed63a9f0aab5d794b2604d5ba79333960bb9440a1a218630b03dbeaeac",
        deprecated=True,
    )
    version(
        "1.0.5",
        "4efa55af25644bcff1ca7882419267b8c094c9cc6155b37d2c204b154c56f5a8",
        url="http://msg.ucsf.edu/MotionCor2/MotionCor2-1.0.5.tar.gz",
        deprecated=True,
    )
    version(
        "1.0.4",
        "c75738160ac18d3f27c33677e78e63313d8ec2b023b5a46173428c3fa0451a94",
        url="http://msg.ucsf.edu/MotionCor2/MotionCor2-1.0.4.tar.gz",
        deprecated=True,
    )

    def url_for_version(self, version):
        return "file://{0}/MotionCor2_{1}.zip".format(os.getcwd(), version)

    depends_on("cuda@10.2,11.1:11.5", type="run")
    depends_on("libtiff", type="run")
    depends_on("patchelf", type="build")

    def install(self, spec, prefix):
        cuda_version = spec["cuda"].version.up_to(2).joined
        cuda_rpath = join_path(spec["cuda"].prefix.targets, "x86_64-linux", "lib")
        libtiff_rpath = spec["libtiff"].prefix.lib
        rpaths = "{0}:{1}".format(cuda_rpath, libtiff_rpath)
        patchelf = which("patchelf")

        mkdirp(prefix.bin)
        with working_dir("MotionCor2_{0}".format(spec.version)):
            motioncor_binary = list(glob.glob("MotionCor2_{0}_Cuda{1}_*".format(spec.version, cuda_version)))
            if not motioncor_binary:
                raise ValueError("Unable to match MotionCor2 binary file.")
            else:
                motioncor_binary = motioncor_binary[0]
            patchelf("--force-rpath", "--set-rpath", rpaths, motioncor_binary)
            install(
                motioncor_binary,
                join_path(prefix.bin, "MotionCor2"),
            )
