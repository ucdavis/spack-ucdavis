-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:19:42.470987
--
-- intel-oneapi-mkl@2022.2.1%gcc@11.3.0~cluster~ilp64+shared build_system=generic arch=linux-ubuntu22.04-x86_64_v3/x3feadh
--

whatis([[Name : intel-oneapi-mkl]])
whatis([[Version : 2022.2.1]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Intel oneAPI Math Kernel Library (Intel oneMKL; formerly Intel Math Kernel Library or Intel MKL), is a library of optimized math routines for science, engineering, and financial applications. Core math functions include BLAS, LAPACK, ScaLAPACK, sparse solvers, fast Fourier transforms, and vector math.]])

help([[Intel oneAPI Math Kernel Library (Intel oneMKL; formerly Intel Math
Kernel Library or Intel MKL), is a library of optimized math routines
for science, engineering, and financial applications. Core math
functions include BLAS, LAPACK, ScaLAPACK, sparse solvers, fast Fourier
transforms, and vector math. LICENSE INFORMATION: By downloading and
using this software, you agree to the terms and conditions of the
software license agreements at https://intel.ly/393CijO.]])



prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-mkl-2022.2.1-x3feadh5z3mil25ezjnzpwlhhv4duxb5/lib", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-mkl-2022.2.1-x3feadh5z3mil25ezjnzpwlhhv4duxb5/./", ":")
prepend_path("LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-mkl-2022.2.1-x3feadh5z3mil25ezjnzpwlhhv4duxb5/mkl/2022.2.1/lib/intel64", ":")
setenv("MKLROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-mkl-2022.2.1-x3feadh5z3mil25ezjnzpwlhhv4duxb5/mkl/2022.2.1")
prepend_path("NLSPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-mkl-2022.2.1-x3feadh5z3mil25ezjnzpwlhhv4duxb5/mkl/2022.2.1/lib/intel64/locale/%l_%t/%N", ":")
prepend_path("CPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-mkl-2022.2.1-x3feadh5z3mil25ezjnzpwlhhv4duxb5/mkl/2022.2.1/include", ":")
prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-mkl-2022.2.1-x3feadh5z3mil25ezjnzpwlhhv4duxb5/mkl/2022.2.1/lib/intel64", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-mkl-2022.2.1-x3feadh5z3mil25ezjnzpwlhhv4duxb5/mkl/2022.2.1/bin/intel64", ":")
prepend_path("PKG_CONFIG_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-mkl-2022.2.1-x3feadh5z3mil25ezjnzpwlhhv4duxb5/mkl/2022.2.1/lib/pkgconfig", ":")
append_path("__INTEL_POST_CFLAGS", "-Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-mkl-2022.2.1-x3feadh5z3mil25ezjnzpwlhhv4duxb5/mkl/2022.2.1/lib/intel64", " ")
append_path("__INTEL_POST_FFLAGS", "-Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-mkl-2022.2.1-x3feadh5z3mil25ezjnzpwlhhv4duxb5/mkl/2022.2.1/lib/intel64", " ")
setenv("INTEL_ONEAPI_MKL_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-mkl-2022.2.1-x3feadh5z3mil25ezjnzpwlhhv4duxb5")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
