-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:48.672611
--
-- phylip@3.697%gcc@11.3.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/ol4if2l
--

whatis([[Name : phylip]])
whatis([[Version : 3.697]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : PHYLIP (the PHYLogeny Inference Package) is a package of programs for inferring phylogenies (evolutionary trees).]])

help([[PHYLIP (the PHYLogeny Inference Package) is a package of programs for
inferring phylogenies (evolutionary trees).]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/phylip-3.697-ol4if2lnjqyua75ibawpg46tqwvcyyjq/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/phylip-3.697-ol4if2lnjqyua75ibawpg46tqwvcyyjq/./", ":")
setenv("PHYLIP_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/phylip-3.697-ol4if2lnjqyua75ibawpg46tqwvcyyjq")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
