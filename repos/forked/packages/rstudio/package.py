# Copyright 2013-2024 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

import os

from spack.package import *
from spack.pkg.ucdavis.forked.boost import Boost


class Rstudio(CMakePackage):
    """RStudio is an integrated development environment (IDE) for R."""

    homepage = "www.rstudio.com/products/rstudio/"

    version("2026.08.1-195",
            sha256="4ce15fb58f38c7eb9bf831ec5707fa013840068489e4ca70a75b3ff1aa8ea389")

    version("2026.07.1-147",
            sha256="40b978e1e79c3c7769c441d6bfd02d2da25a5e87c01bc6c07f7573e3a3b9e066")

    version("2024.09.0-375",
            sha256="8a29b77c53a3db8379d824a9f4a491843036003d105ed71981cd40fe39d2c8c8")

    version("2023.12.1-402",
            sha256="196d31094d580a74737fbf689d2d0b302da5fec13694aa1d63f8875d3e45e4dd")

    version("2022.12.0-353",
            sha256="e4f3503e2ad4229301360f56fd5288e5c8e769c490073dae7fe40366237ecce0")

    version("1.4.1717",
            url="https://github.com/rstudio/rstudio/archive/refs/tags/v1.4.1717.tar.gz",
            sha256="3af234180fd7cef451aef40faac2c7b52860f14a322244c1c7aede029814d261")

    # https://github.com/rstudio/rstudio/archive/refs/tags/2023.12.1+402.tar.gz
    def url_for_version(self, version):
        url = "https://github.com/rstudio/rstudio/archive/refs/tags/v{0}.tar.gz"
        return url.format(str(version).replace('-', '+'))

    variant("notebook", default=False, description="Enable notebook support.")
    variant("server", default=False, when="@2022.12.0-353:", description="Build server version.")
    variant("external_libr", default=True, description="Strip the RPATH entry for libR.so from the rsession binary.")

    depends_on("r@3.0.1:", type="build")
    depends_on("cmake@3.4.3:", type="build")
    depends_on("pkgconfig", type="build")
    depends_on("chrpath", type="build")
    depends_on("ant", type="build")
    #depends_on("qt+webkit@5.12:5.14")
    depends_on("qt@5.15.8:")
    depends_on("patchelf@0.9:")
    depends_on("yarn")
    depends_on("pandoc@2.11.4:")
    depends_on("icu4c")
    depends_on("soci~static~mysql+boost+postgresql+sqlite cxxstd=14")
    depends_on("java@8:")
    depends_on("libpam", when="+server")
    depends_on("openssl@3:")
    depends_on("gettext")

    # require EXACT node version to match rstudio expectation
    with when("@2022.12.0"):
        depends_on("{0}@:1.82.9999+pic".format(Boost.with_default_variants))
        depends_on("node-js@16:")
        depends_on("yarn@1.22.4:")
        depends_on("npm@9.8.1")
        depends_on("yaml-cpp@:0.6.3")  # find_package fails with newest version

    # require EXACT node version to match rstudio expectation
    with when("@2023.12.1-402"):
        depends_on("{0}@1.83.0 +pic".format(Boost.with_default_variants))
        depends_on("node-js@18.18.2")
        depends_on("yarn@1.22.4:")
        depends_on("npm@9.8.1")
        depends_on("openssl@3.2:")
        depends_on("yaml-cpp@:0.6.3")  # find_package fails with newest version

    # require EXACT node version to match rstudio expectation
    with when("@2024.09.0-375"):
        depends_on("{0}@1.83.0 +pic".format(Boost.with_default_variants)) # grep 'set(RSTUDIO_BOOST_REQUESTED_VERSION' src/cpp/CMakeLists.txt
        depends_on("node-js@20.15.1") # grep 'set(RSTUDIO_INSTALLED_NODE_VERSION' cmake/globals.cmake
        depends_on("yarn@1.22.4:")
        depends_on("npm@10.9.0") # Not specified in rstudio source, grabbing newest.
        depends_on("openssl@3.2:")
        depends_on("yaml-cpp@:0.6.3")  # find_package fails with newest version
        #Necessary to exactly match?# depends_on("pandoc@2.18") # grep PANDOC_VERSION= dependencies/common/install-pandoc

    with when("@2026.07.1-147:2026.08.1-195"):
        depends_on("node-js@20.15.1") # grep 'set(RSTUDIO_INSTALLED_NODE_VERSION' cmake/globals.cmake
        depends_on("yarn@1.22.4:")
        depends_on("npm@10.9.0") # Not specified in rstudio source, grabbing newest.
        depends_on("openssl@3.2:")
        # rstudio 2026.07.1 adds Boost.URL to its required components
        # (src/cpp/CMakeLists.txt BOOST_LIBS), so boost must be built +url.
        depends_on("{0}@1.91.0 +pic +url".format(Boost.with_default_variants))
        depends_on("yaml-cpp@0.8.0")
        # rstudio 2026.07.1 hardcodes PANDOC_VERSION "3.2"
        # (cmake/globals.cmake); match it so the tools/pandoc/<ver> check passes.
        depends_on("pandoc@3.2")
        # rstudio 2026.07.1's fetch() (src/cpp/ext/CMakeLists.txt) only promotes
        # system deps to a GLOBAL imported target when cmake > 3.24. With older
        # cmake, yaml-cpp::yaml-cpp stays scoped to src/cpp/ext and is
        # unresolvable from the sibling targets that link it.
        depends_on("cmake@3.25:", type="build")

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

    #transitive_rpaths = False
        
    def cmake_args(self):

        args = [
            "-DRSTUDIO_PACKAGE_BUILD=1",
            "-DCMAKE_BUILD_TYPE=Release",
            "-DRSTUDIO_USE_SYSTEM_YAML_CPP=Yes",
            "-DRSTUDIO_USE_SYSTEM_BOOST=Yes",
            "-DRSTUDIO_USE_SYSTEM_SOCI=Yes",
            "-DQUARTO_ENABLED=No", # temporary?
            "-DRSTUDIO_ENABLE_COPILOT=No",
            '-DQT_QMAKE_EXECUTABLE="{0}"'.format(self.spec["qt"].prefix.bin.qmake),
            #"-DCMAKE_INSTALL_RPATH_USE_LINK_PATH=OFF"
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

        if self.spec.satisfies("@2022.12.0:"):
            filter_file(
                '<property name="node.dir" value="../../dependencies/common/node/${node.version}"/>',
                '<property name="node.dir" value="{0}"/>'.format(self.spec["node-js"].prefix),
                "src/gwt/build.xml",
                string=True,
            )

        if self.spec.satisfies("@2022.12.0-353"):
            filter_file(
                '<condition property="node.bin" value="../../../${node.dir}/bin/node">',
                '<condition property="node.bin" value="${node.dir}/bin/node">',
                "src/gwt/build.xml",
                string=True,
            )
        else:
            # to use node-js provided by spack: first patches this portion of config to a single line
            patch("0004-use-system-node.patch")

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
        #filter_file(
        #    "${QT_LIBRARY_DIR}/${ICU_LIBRARY}.so",
        #    join_path(self.spec["icu4c"].prefix.lib, "${ICU_LIBRARY}.so"),
        #    "src/cpp/desktop/CMakeLists.txt",
        #    string=True,
        #)

    @run_before("cmake")
    def install_deps(self):
        deps = Executable("./dependencies/common/install-dictionaries")
        deps()
        deps = Executable("./dependencies/common/install-mathjax")
        deps()

        if self.spec.satisfies("@2023.12.1:"):
            deps = Executable("./dependencies/common/install-panmirror")
            deps()

        if self.spec.satisfies("@2026.07.1-147:"):
            with working_dir("dependencies/common"):
                # GWT client build (src/gwt/build.xml) resolves lib.dir to
                # dependencies/common/gwtproject.
                Executable("./install-gwt")()
                # rstudio 2026 bundles a pinned node (RSTUDIO_INSTALLED_NODE_VERSION
                # = 22.22.2 in dependencies/tools/rstudio-tools.sh), which the
                # install step copies from node/<ver>-installed. Spack has no such
                # node, so fetch rstudio's own node (+yarn) via its installer.
                Executable("./install-npm-dependencies")()

        # two methods for pandoc
        # 1) replace install-pandoc:
        #    - link pandoc into tools/pandoc/$PANDOC_VERSION
        #      (this is what install-pandoc would do)
        #    - cmake then installs pandoc files from there into bin
        # 2) remove install-pandoc and cmake install step + link directly into bin

        # method 1)

        if self.spec.satisfies("@1.4.1717"):
            filter_file(
                'set(PANDOC_VERSION "2.11.4" CACHE INTERNAL "Pandoc version")',
                'set(PANDOC_VERSION "{0}" CACHE INTERNAL "Pandoc version")'.format(
                    self.spec["pandoc"].version
                ),
                "src/cpp/session/CMakeLists.txt",
                string=True,
            )
        elif self.spec.satisfies("@2022.12.0-353:2023.12.1-402"):
            # grep PANDOC_VERSION= dependencies/common/install-pandoc
            filter_file(
                'set(PANDOC_VERSION "2.18" CACHE INTERNAL "Pandoc version")',
                'set(PANDOC_VERSION "{0}" CACHE INTERNAL "Pandoc version")'.format(
                    self.spec["pandoc"].version
                ),
                "CMakeGlobals.txt",
                string=True,
            )
        elif self.spec.satisfies("@2024.09.0-375:"):
            # grep PANDOC_VERSION= dependencies/common/install-pandoc
            filter_file(
                'set(PANDOC_VERSION "2.18" CACHE INTERNAL "Pandoc version")',
                'set(PANDOC_VERSION "{0}" CACHE INTERNAL "Pandoc version")'.format(
                    self.spec["pandoc"].version
                ),
                'cmake/globals.cmake',
                string=True,
            )



        pandoc_dir = join_path(self.prefix.tools, "pandoc", self.spec["pandoc"].version)
        os.makedirs(pandoc_dir)
        with working_dir(pandoc_dir):
            os.symlink(self.spec["pandoc"].prefix.bin.pandoc, "pandoc")
            os.symlink(
                os.path.join(self.spec["pandoc"].prefix.bin, "pandoc-citeproc"), "pandoc-citeproc"
            )

        if self.spec.satisfies("@2022.12.0:"):
            node_shim_dir = f"dependencies/common/node/{self.spec['node-js'].version}/bin"
            os.makedirs(node_shim_dir)
            with working_dir(node_shim_dir):
                os.symlink(self.spec["node-js"].prefix.bin.node, "node")
                os.symlink(self.spec["node-js"].prefix.bin.corepack, "corepack")
                os.symlink(self.spec["yarn"].prefix.bin.yarn, "yarn")
                os.symlink(self.spec["npm"].prefix.bin.npm, "npm")
                os.symlink(self.spec["npm"].prefix.bin.npx, "npx")

        if self.spec.satisfies("@2024.09.0-375:"):
            node_version = self.spec['node-js'].version
            with working_dir('dependencies/common/node'):
                os.symlink(str(node_version), f'{node_version}-patched')

    @run_after("build")
    def convert_rpath(self):
        chrpath = which("chrpath")
        binaries = [join_path(self.build_directory, "src", "cpp", "session", "rsession"),
                    join_path(self.build_directory, "src", "cpp", "server", "rserver")]
        for binary in binaries:
            chrpath("-c", binary)
