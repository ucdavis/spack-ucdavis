-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-05-12 12:29:33.662149
--
-- hwloc@2.8.0%gcc@11.3.0+cairo+cuda~gl+libudev+libxml2~netloc+nvml~oneapi-level-zero~opencl+pci~rocm build_system=autotools cuda_arch=75 libs=shared,static arch=linux-ubuntu22.04-x86_64_v3/hwfibpm
--

whatis([[Name : hwloc]])
whatis([[Version : 2.8.0]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : The Hardware Locality (hwloc) software project.]])
whatis([[Configure options : --disable-opencl --disable-rsmi --enable-cairo --enable-nvml --disable-gl --enable-cuda --enable-libxml2 --enable-libudev --enable-pci --enable-shared --enable-static --with-cuda=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/cuda-11.7.1-pkcc5ttbgrknfycfjj3v2lezjcdnlth4 --with-cuda-version=11.7.1]])

help([[The Hardware Locality (hwloc) software project. The Portable Hardware
Locality (hwloc) software package provides a portable abstraction
(across OS, versions, architectures, ...) of the hierarchical topology
of modern architectures, including NUMA memory nodes, sockets, shared
caches, cores and simultaneous multithreading. It also gathers various
system attributes such as cache and memory information as well as the
locality of I/O devices such as network interfaces, InfiniBand HCAs or
GPUs. It primarily aims at helping applications with gathering
information about modern computing hardware so as to exploit it
accordingly and efficiently.]])


depends_on("cuda/11.7.1")

prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/hwloc-2.8.0-hwfibpmbrcgtjoglao3z5itozvgqmoa6/lib", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/hwloc-2.8.0-hwfibpmbrcgtjoglao3z5itozvgqmoa6/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/hwloc-2.8.0-hwfibpmbrcgtjoglao3z5itozvgqmoa6/./share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/hwloc-2.8.0-hwfibpmbrcgtjoglao3z5itozvgqmoa6/./lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/hwloc-2.8.0-hwfibpmbrcgtjoglao3z5itozvgqmoa6/./", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/libx11-1.7.0-37huyicewgwa4it26lyc7hrklw2g6q6o/share/X11/locale", ":")
setenv("HWLOC_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/hwloc-2.8.0-hwfibpmbrcgtjoglao3z5itozvgqmoa6")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
