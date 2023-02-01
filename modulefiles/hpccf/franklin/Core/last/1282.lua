-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:47.043568
--
-- last@1282%gcc@11.3.0 build_system=makefile arch=linux-ubuntu22.04-x86_64_v3/ozq77d4
--

whatis([[Name : last]])
whatis([[Version : 1282]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : LAST finds similar regions between sequences, and aligns them. It is designed for comparing large datasets to each other (e.g. vertebrate genomes and/or large numbers of DNA reads).]])

help([[LAST finds similar regions between sequences, and aligns them. It is
designed for comparing large datasets to each other (e.g. vertebrate
genomes and/or large numbers of DNA reads).]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/last-1282-ozq77d43ctwvdv6gq3oelentq2at6rim/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/last-1282-ozq77d43ctwvdv6gq3oelentq2at6rim/./", ":")
setenv("LAST_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/last-1282-ozq77d43ctwvdv6gq3oelentq2at6rim")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
