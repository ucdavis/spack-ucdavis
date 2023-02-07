-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-25 13:33:53.233259
--
-- motioncor2@1.5.0%gcc@11.3.0 build_system=generic arch=linux-ubuntu22.04-x86_64/rt7eqto
--

whatis([[Name : motioncor2]])
whatis([[Version : 1.5.0]])
whatis([[Target : x86_64]])
whatis([[Short description : MotionCor2 is a multi-GPU program that corrects beam-induced sample motion recorded on dose fractionated movie stacks. It implements a robust iterative alignment algorithm that delivers precise measurement and correction of both global and non-uniform local motions at single pixel level, suitable for both single-particle and tomographic images. MotionCor2 is sufficiently fast to keep up with automated data collection.]])

help([[MotionCor2 is a multi-GPU program that corrects beam-induced sample
motion recorded on dose fractionated movie stacks. It implements a
robust iterative alignment algorithm that delivers precise measurement
and correction of both global and non-uniform local motions at single
pixel level, suitable for both single-particle and tomographic images.
MotionCor2 is sufficiently fast to keep up with automated data
collection.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-11.3.0/motioncor2-1.5.0-rt7eqto5iizpuzt734x46z3quoummrcf/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-11.3.0/motioncor2-1.5.0-rt7eqto5iizpuzt734x46z3quoummrcf/./", ":")
setenv("MOTIONCOR2_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-11.3.0/motioncor2-1.5.0-rt7eqto5iizpuzt734x46z3quoummrcf")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
