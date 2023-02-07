-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:43.127659
--
-- bwtool@1.0%gcc@9.5.0 build_system=autotools arch=linux-ubuntu22.04-x86_64_v3/v2tyopq
--

whatis([[Name : bwtool]])
whatis([[Version : 1.0]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : bwtool is a command-line utility for bigWig files.]])

help([[bwtool is a command-line utility for bigWig files.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/bwtool-1.0-v2tyopq73ixxaf3b3cf77qxegc5k4gzy/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/bwtool-1.0-v2tyopq73ixxaf3b3cf77qxegc5k4gzy/./", ":")
setenv("BWTOOL_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/bwtool-1.0-v2tyopq73ixxaf3b3cf77qxegc5k4gzy")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
