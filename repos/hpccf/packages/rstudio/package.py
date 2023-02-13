# Copyright 2013-2023 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

import os

from spack.package import *
from spack.pkg.builtin.boost import Boost


class Rstudio(CMakePackage):
    """RStudio is an integrated development environment (IDE) for R."""

    homepage = "www.rstudio.com/products/rstudio/"

    version("2022.12.0-353",
            sha256="e4f3503e2ad4229301360f56fd5288e5c8e769c490073dae7fe40366237ecce0")

    version("1.4.1717",
            url="https://github.com/rstudio/rstudio/archive/refs/tags/v1.4.1717.tar.gz",
            sha256="3af234180fd7cef451aef40faac2c7b52860f14a322244c1c7aede029814d261")

    def url_for_version(self, version):
        url = "https://github.com/rstudio/rstudio/archive/refs/tags/v{0}.tar.gz"
        return url.format(str(version).replace('-', '+'))

    variant("notebook", default=False, description="Enable notebook support.")
    variant("server", default=False, when="@2022.12.0-353:", description="Build server version.")

    depends_on("r@3.0.1:", type=("build", "link"))
    depends_on("cmake@3.4.3:", type="build")
    depends_on("pkgconfig", type="build")
    depends_on("ant", type="build")
    depends_on("{0}+pic".format(Boost.with_default_variants))
    #depends_on("qt+webkit@5.12:5.14")
    depends_on("qt@5.15.8:")
    depends_on("patchelf@0.9:")
    depends_on("yaml-cpp@:0.6.3")  # find_package fails with newest version
    depends_on("node-js@16:")
    depends_on("yarn")
    depends_on("pandoc@2.11.4:")
    depends_on("icu4c")
    depends_on("soci~static~mysql+boost+postgresql+sqlite cxxstd=14")
    depends_on("java@8:")
    depends_on("libpam", when="+server")
    depends_on("openssl@3:")
    depends_on("gettext")

    with when("+notebook"):
        depends_on("r-base64enc")
        depends_on("r-digest")
        depends_on("r-evaluate")
        depends_on("r-glue")
        depends_on("r-highr")
        depends_on("r-htmltools")
        depends_on("r-jsonlite")
        depends_on("r-knitr")
        depends_on("r-magrittr")
        depends_on("r-markdown")
        depends_on("r-mime")
        depends_on("r-rmarkdown")
        depends_on("r-stringi")
        depends_on("r-stringr")
        depends_on("r-tinytex")
        depends_on("r-xfun")
        depends_on("r-yaml")

    # to use node-js provided by spack: first patches this portion of config to a single line
    patch("0004-use-system-node.patch")

    def cmake_args(self):

        args = [
            "-DRSTUDIO_PACKAGE_BUILD=Yes",
            "-DRSTUDIO_USE_SYSTEM_YAML_CPP=Yes",
            "-DRSTUDIO_USE_SYSTEM_BOOST=Yes",
            "-DRSTUDIO_USE_SYSTEM_SOCI=Yes",
            "-DQUARTO_ENABLED=No", # temporary?
            '-DQT_QMAKE_EXECUTABLE="{0}"'.format(self.spec["qt"].prefix.bin.qmake),
        ]

        if '+server' in self.spec:
            args.extend([
                "-DRSTUDIO_TARGET=Server"
            ])
        else:
            args.extend([
                "-DRSTUDIO_TARGET=Desktop",
            ])

        return args

    def setup_build_environment(self, env):
        env.set("RSTUDIO_TOOLS_ROOT", self.prefix.tools)

    def patch(self):
        # Now patch that single line for node to the spack provided version
        filter_file(
            '<property name="node.bin" value="/usr/bin/node"/>',
            '<property name="node.bin" value="{0}"/>'.format(self.spec["node-js"].prefix.bin.node),
            "src/gwt/build.xml",
            string=True,
        )

        # remove hardcoded soci path to use spack soci
        if self.spec["soci"].version <= Version("4.0.0"):
            soci_lib = self.spec["soci"].prefix.lib64
        else:
            soci_lib = self.spec["soci"].prefix.lib
        filter_file(
            'set(SOCI_LIBRARY_DIR "/usr/lib")',
            'set(SOCI_LIBRARY_DIR "{0}")'.format(soci_lib),
            "src/cpp/CMakeLists.txt",
            string=True,
        )

        # unbundle icu libraries
        filter_file(
            "${QT_LIBRARY_DIR}/${ICU_LIBRARY}.so",
            join_path(self.spec["icu4c"].prefix.lib, "${ICU_LIBRARY}.so"),
            "src/cpp/desktop/CMakeLists.txt",
            string=True,
        )

    @run_before("cmake")
    def install_deps(self):
        deps = Executable("./dependencies/common/install-dictionaries")
        deps()
        deps = Executable("./dependencies/common/install-mathjax")
        deps()

        # two methods for pandoc
        # 1) replace install-pandoc:
        #    - link pandoc into tools/pandoc/$PANDOC_VERSION
        #      (this is what install-pandoc would do)
        #    - cmake then installs pandoc files from there into bin
        # 2) remove install-pandoc and cmake install step + link directly into bin

        # method 1)

        with when("@1.4.1717"):
            filter_file(
                'set(PANDOC_VERSION "2.11.4" CACHE INTERNAL "Pandoc version")',
                'set(PANDOC_VERSION "{0}" CACHE INTERNAL "Pandoc version")'.format(
                    self.spec["pandoc"].version
                ),
                "src/cpp/session/CMakeLists.txt",
                string=True,
            )

        with when("@2022.12.0-353:"):
            filter_file(
                'set(PANDOC_VERSION "2.18" CACHE INTERNAL "Pandoc version")',
                'set(PANDOC_VERSION "{0}" CACHE INTERNAL "Pandoc version")'.format(
                    self.spec["pandoc"].version
                ),
                "CMakeGlobals.txt",
                string=True,
            )

        pandoc_dir = join_path(self.prefix.tools, "pandoc", self.spec["pandoc"].version)
        os.makedirs(pandoc_dir)
        with working_dir(pandoc_dir):
            os.symlink(self.spec["pandoc"].prefix.bin.pandoc, "pandoc")
            os.symlink(
                os.path.join(self.spec["pandoc"].prefix.bin, "pandoc-citeproc"), "pandoc-citeproc"
            )
