-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:31.405779
--
-- sickle@1.33%gcc@9.5.0 build_system=makefile arch=linux-ubuntu22.04-x86_64_v3/bfbnyhq
--

whatis([[Name : sickle]])
whatis([[Version : 1.33]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Sickle is a tool that uses sliding windows along with quality and length thresholds to determine when quality is sufficiently low to trim the 3'-end of reads and also determines when the quality is sufficiently high enough to trim the 5'-end of reads.]])

help([[Sickle is a tool that uses sliding windows along with quality and length
thresholds to determine when quality is sufficiently low to trim the
3'-end of reads and also determines when the quality is sufficiently
high enough to trim the 5'-end of reads.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/sickle-1.33-bfbnyhqqucw4vsejjfyttp7hiappv6jy/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/sickle-1.33-bfbnyhqqucw4vsejjfyttp7hiappv6jy/./", ":")
setenv("SICKLE_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/sickle-1.33-bfbnyhqqucw4vsejjfyttp7hiappv6jy")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
