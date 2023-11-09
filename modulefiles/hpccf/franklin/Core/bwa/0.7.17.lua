-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:17.869223
--
-- bwa@0.7.17%gcc@9.5.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/3ogkbh2
--

whatis([[Name : bwa]])
whatis([[Version : 0.7.17]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Burrow-Wheeler Aligner for pairwise alignment between DNA sequences.]])

help([[Burrow-Wheeler Aligner for pairwise alignment between DNA sequences.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/bwa-0.7.17-3ogkbh2ixha52dxps2letankhc2dbeax/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/bwa-0.7.17-3ogkbh2ixha52dxps2letankhc2dbeax/./man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/bwa-0.7.17-3ogkbh2ixha52dxps2letankhc2dbeax/./", ":")
setenv("BWA_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/bwa-0.7.17-3ogkbh2ixha52dxps2letankhc2dbeax")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
