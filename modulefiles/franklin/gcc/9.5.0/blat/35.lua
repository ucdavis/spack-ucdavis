-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-18 10:54:01.927877
--
-- blat@35%gcc@9.5.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/m77vejo
--

whatis([[Name : blat]])
whatis([[Version : 35]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : BLAT (BLAST-like alignment tool) is a pairwise sequence alignment algorithm.]])

help([[BLAT (BLAST-like alignment tool) is a pairwise sequence alignment
algorithm.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/blat-35-m77vejonsaszroy735swxnloeab6wtkw/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/blat-35-m77vejonsaszroy735swxnloeab6wtkw/./", ":")
setenv("BLAT_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/blat-35-m77vejonsaszroy735swxnloeab6wtkw")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
