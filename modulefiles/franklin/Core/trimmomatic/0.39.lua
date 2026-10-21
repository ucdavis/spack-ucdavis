-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-09-08 13:21:15.219306
--
-- trimmomatic@0.39%gcc@9.5.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/ufipw5f
--

whatis([[Name : trimmomatic]])
whatis([[Version : 0.39]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : A flexible read trimming tool for Illumina NGS data.]])

help([[A flexible read trimming tool for Illumina NGS data.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/trimmomatic-0.39-ufipw5fh4n5uttnl4jcclwabpmiwhfde/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/trimmomatic-0.39-ufipw5fh4n5uttnl4jcclwabpmiwhfde/./", ":")
setenv("TRIMMOMATIC_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/trimmomatic-0.39-ufipw5fh4n5uttnl4jcclwabpmiwhfde")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
