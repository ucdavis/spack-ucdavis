-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:19:44.489220
--
-- rclone@1.59.1%gcc@11.3.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/p5shsfg
--

whatis([[Name : rclone]])
whatis([[Version : 1.59.1]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Rclone is a command line program to sync files and directories to and from various cloud storage providers]])

help([[Rclone is a command line program to sync files and directories to and
from various cloud storage providers]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/rclone-1.59.1-p5shsfgvmoxyzeickgagjxof2psxkn7f/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/rclone-1.59.1-p5shsfgvmoxyzeickgagjxof2psxkn7f/./", ":")
setenv("RCLONE_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/rclone-1.59.1-p5shsfgvmoxyzeickgagjxof2psxkn7f")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
