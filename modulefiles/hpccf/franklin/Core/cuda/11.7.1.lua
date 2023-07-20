-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-06-05 16:40:44.165068
--
-- cuda@11.7.1%gcc@11.3.0~allow-unsupported-compilers~dev build_system=generic arch=linux-ubuntu22.04-x86_64_v3/pkcc5tt
--

whatis([[Name : cuda]])
whatis([[Version : 11.7.1]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : CUDA is a parallel computing platform and programming model invented by NVIDIA. It enables dramatic increases in computing performance by harnessing the power of the graphics processing unit (GPU).]])

help([[CUDA is a parallel computing platform and programming model invented by
NVIDIA. It enables dramatic increases in computing performance by
harnessing the power of the graphics processing unit (GPU). Note: This
package does not currently install the drivers necessary to run CUDA.
These will need to be installed manually. See:
https://docs.nvidia.com/cuda/ for details.]])



prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/cuda-11.7.1-pkcc5ttbgrknfycfjj3v2lezjcdnlth4/lib64", ":")
prepend_path("CPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/cuda-11.7.1-pkcc5ttbgrknfycfjj3v2lezjcdnlth4/include", ":")
prepend_path("C_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/cuda-11.7.1-pkcc5ttbgrknfycfjj3v2lezjcdnlth4/include", ":")
prepend_path("CPLUS_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/cuda-11.7.1-pkcc5ttbgrknfycfjj3v2lezjcdnlth4/include", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/cuda-11.7.1-pkcc5ttbgrknfycfjj3v2lezjcdnlth4/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/cuda-11.7.1-pkcc5ttbgrknfycfjj3v2lezjcdnlth4/./", ":")
setenv("CUDA_HOME", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/cuda-11.7.1-pkcc5ttbgrknfycfjj3v2lezjcdnlth4")
setenv("CUDA_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/cuda-11.7.1-pkcc5ttbgrknfycfjj3v2lezjcdnlth4")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
