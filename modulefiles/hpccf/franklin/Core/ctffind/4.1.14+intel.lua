-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-05-30 13:50:14.456491
--
-- ctffind@4.1.14%gcc@11.3.0+openmp build_system=autotools patches=d2d349c arch=linux-ubuntu22.04-x86_64_v3/lovpm4v
--

whatis([[Name : ctffind]])
whatis([[Version : 4.1.14]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Fast and accurate defocus estimation from electron micrographs.]])
whatis([[Configure options : --disable-debugmode --enable-mkl CPPFLAGS=-I/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-mkl-2022.2.1-x3feadh5z3mil25ezjnzpwlhhv4duxb5/mkl/2022.2.1/include -I/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-mkl-2022.2.1-x3feadh5z3mil25ezjnzpwlhhv4duxb5/mkl/2022.2.1/include/fftw LDFLAGS=-L/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-mkl-2022.2.1-x3feadh5z3mil25ezjnzpwlhhv4duxb5/mkl/2022.2.1/lib/intel64 -L/lib/x86_64-linux-gnu -lmkl_intel_lp64 -lmkl_sequential -lmkl_core -lm --enable-openmp]])

help([[Fast and accurate defocus estimation from electron micrographs.]])


depends_on("intel-oneapi-mkl/2022.2.1")

prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/ctffind-4.1.14-lovpm4vonxfafycwp3gpf7alnd7vujrx/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/ctffind-4.1.14-lovpm4vonxfafycwp3gpf7alnd7vujrx/./", ":")
setenv("CTFFIND_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/ctffind-4.1.14-lovpm4vonxfafycwp3gpf7alnd7vujrx")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
