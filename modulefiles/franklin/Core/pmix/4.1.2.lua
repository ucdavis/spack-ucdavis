-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-09-12 14:17:18.035829
--
-- pmix@4.1.2%gcc@11.3.0~docs+pmi_backwards_compatibility~restful build_system=autotools arch=linux-ubuntu22.04-x86_64_v3/6gsyach
--

whatis([[Name : pmix]])
whatis([[Version : 4.1.2]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : The Process Management Interface (PMI) has been used for quite some time as a means of exchanging wireup information needed for interprocess communication. However, meeting the significant orchestration challenges presented by exascale systems requires that the process-to-system interface evolve to permit a tighter integration between the different components of the parallel application and existing and future SMS solutions.]])
whatis([[Configure options : --enable-shared --enable-static --with-libevent=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/libevent-2.1.12-7d5va7mlpbbhekswhmbmslxgvvxm7c5i --with-hwloc=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/hwloc-2.8.0-hwfibpmbrcgtjoglao3z5itozvgqmoa6 --enable-pmi-backward-compatibility --disable-man-pages]])

help([[The Process Management Interface (PMI) has been used for quite some time
as a means of exchanging wireup information needed for interprocess
communication. However, meeting the significant orchestration challenges
presented by exascale systems requires that the process-to-system
interface evolve to permit a tighter integration between the different
components of the parallel application and existing and future SMS
solutions. PMI Exascale (PMIx) addresses these needs by providing an
extended version of the PMI definitions specifically designed to support
exascale and beyond environments by: (a) adding flexibility to the
functionality expressed in the existing APIs, (b) augmenting the
interfaces with new APIs that provide extended capabilities, (c) forging
a collaboration between subsystem providers including resource manager,
fabric, file system, and programming library developers, (d)
establishing a standards-like body for maintaining the definitions, and
(e) providing a reference implementation of the PMIx standard that
demonstrates the desired level of scalability while maintaining strict
separation between it and the standard itself.]])


depends_on("hwloc/2.8.0")
depends_on("libevent/2.1.12")

prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/pmix-4.1.2-6gsyachlobhzj6tskq2li4rjhpla23om/lib", ":")
prepend_path("CPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/pmix-4.1.2-6gsyachlobhzj6tskq2li4rjhpla23om/include", ":")
prepend_path("C_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/pmix-4.1.2-6gsyachlobhzj6tskq2li4rjhpla23om/include", ":")
prepend_path("CPLUS_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/pmix-4.1.2-6gsyachlobhzj6tskq2li4rjhpla23om/include", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/pmix-4.1.2-6gsyachlobhzj6tskq2li4rjhpla23om/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/pmix-4.1.2-6gsyachlobhzj6tskq2li4rjhpla23om/./share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/pmix-4.1.2-6gsyachlobhzj6tskq2li4rjhpla23om/./lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/pmix-4.1.2-6gsyachlobhzj6tskq2li4rjhpla23om/./", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/libx11-1.7.0-37huyicewgwa4it26lyc7hrklw2g6q6o/share/X11/locale", ":")
setenv("PMIX_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/pmix-4.1.2-6gsyachlobhzj6tskq2li4rjhpla23om")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
