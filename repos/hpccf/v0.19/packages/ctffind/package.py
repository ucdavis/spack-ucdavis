# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack.package import *


class Ctffind(AutotoolsPackage):
    """Fast and accurate defocus estimation from electron micrographs."""

    homepage = "https://grigoriefflab.umassmed.edu/ctffind4"
    url = "https://grigoriefflab.umassmed.edu/system/tdf?path=ctffind-4.1.8.tar.gz&file=1&type=node&id=26"

    version(
        "4.1.14",
        sha256="db17b2ebeb3c3b2b3764e42b820cd50d19ccccf6956c64257bfe5d5ba6b40cb5",
        extension="tar.gz",
    )
    version(
        "4.1.8",
        sha256="bec43c0b8d32878c740d6284ef6d9d22718c80dc62270be18d1d44e8b84b2729",
        extension="tar.gz",
    )

    def url_for_version(self, version):
        url = "https://grigoriefflab.umassmed.edu/system/tdf?path=ctffind-{0}.tar.gz&file=1&type=node&id=26"
        return url.format(version)

    variant("openmp", default=True, description="Enable openmp support.")

    depends_on("wxwidgets")
    depends_on("fftw-api")
    depends_on("libtiff")
    depends_on("jpeg")

    patch("configure.patch", when="@4.1.8")
    patch("power9.patch", when="@4.1.14 target=power9le")
    patch("ctffind.cpp.patch", when="@4.1.14")

    def configure_args(self):
        config_args = ["--disable-debugmode"]

        if "^intel-oneapi-mkl" in self.spec:
            config_args.extend(
                [
                    "--enable-mkl",
                    "CPPFLAGS={0} -I{1}".format(
                        self.spec["fftw-api"].headers.include_flags,
                        join_path(self.spec["fftw-api"].headers.directories[0], "fftw")
                    ),
                    "LDFLAGS={0}".format(
                        self.spec["fftw-api"].libs.ld_flags
                    )
                ]
            )
        else:
            config_args.append("--disable-mkl")
            config_args.extend(
                [
                    "CPPFLAGS={0}".format(
                        self.spec["fftw-api"].headers.include_flags
                    ),
                    "LDFLAGS={0}".format(
                        self.spec["fftw-api"].libs.ld_flags
                    )
                ]
            )

        if '+openmp' in self.spec:
            config_args.append("--enable-openmp")

        return config_args