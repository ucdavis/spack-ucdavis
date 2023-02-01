-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:44.174884
--
-- glimmer@3.02b%gcc@11.3.0 build_system=makefile arch=linux-ubuntu22.04-x86_64_v3/ajk3qgy
--

whatis([[Name : glimmer]])
whatis([[Version : 3.02b]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Glimmer is a system for finding genes in microbial DNA, especially the genomes of bacteria, archaea, and viruses.]])

help([[Glimmer is a system for finding genes in microbial DNA, especially the
genomes of bacteria, archaea, and viruses.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/glimmer-3.02b-ajk3qgysdkk6f2lhmjx4ijaxyuslfabp/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/glimmer-3.02b-ajk3qgysdkk6f2lhmjx4ijaxyuslfabp/./", ":")
setenv("GLIMMER_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/glimmer-3.02b-ajk3qgysdkk6f2lhmjx4ijaxyuslfabp")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
