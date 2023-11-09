-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-09-12 14:17:19.165513
--
-- ucx@1.13.1%gcc@11.3.0~assertions~backtrace_detail~cma~cuda~dc~debug~dm+examples~gdrcopy~ib_hw_tm~java~knem~logging~mlx5_dv+openmp+optimizations~parameter_checking+pic~rc~rdmacm~rocm+thread_multiple~ucg~ud~verbs~vfs~xpmem build_system=autotools libs=shared,static opt=3 patches=32fce32 simd=auto arch=linux-ubuntu22.04-x86_64_v3/nabnsut
--

whatis([[Name : ucx]])
whatis([[Version : 1.13.1]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : a communication library implementing high-performance messaging for MPI/PGAS frameworks]])
whatis([[Configure options : --without-go --disable-doxygen-doc --disable-assertions --enable-compiler-opt=3 --without-java --enable-shared --enable-static --disable-logging --enable-mt --with-openmp --enable-optimizations --disable-params-check --with-pic --without-cuda --without-rocm --disable-cma --without-dc --without-dm --without-gdrcopy --without-ib-hw-tm --without-knem --without-mlx5-dv --without-rc --without-ud --without-xpmem --without-fuse3 --without-bfd --without-rdmacm --without-verbs --with-avx]])

help([[a communication library implementing high-performance messaging for
MPI/PGAS frameworks]])



prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/ucx-1.13.1-nabnsutc6uz54vi4elfxamotwewr7pxl/lib", ":")
prepend_path("CPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/ucx-1.13.1-nabnsutc6uz54vi4elfxamotwewr7pxl/include", ":")
prepend_path("C_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/ucx-1.13.1-nabnsutc6uz54vi4elfxamotwewr7pxl/include", ":")
prepend_path("CPLUS_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/ucx-1.13.1-nabnsutc6uz54vi4elfxamotwewr7pxl/include", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/ucx-1.13.1-nabnsutc6uz54vi4elfxamotwewr7pxl/./bin", ":")
prepend_path("PKG_CONFIG_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/ucx-1.13.1-nabnsutc6uz54vi4elfxamotwewr7pxl/./lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/ucx-1.13.1-nabnsutc6uz54vi4elfxamotwewr7pxl/./", ":")
setenv("UCX_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/ucx-1.13.1-nabnsutc6uz54vi4elfxamotwewr7pxl")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
