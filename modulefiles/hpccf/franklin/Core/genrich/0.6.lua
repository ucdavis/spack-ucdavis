-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:44.150072
--
-- genrich@0.6%gcc@11.3.0 build_system=makefile arch=linux-ubuntu22.04-x86_64_v3/korfe7t
--

whatis([[Name : genrich]])
whatis([[Version : 0.6]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Genrich is a peak-caller for genomic enrichment assays.]])

help([[Genrich is a peak-caller for genomic enrichment assays.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/genrich-0.6-korfe7tzyvxhpa2ra67xbghvfnw6wxku/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/genrich-0.6-korfe7tzyvxhpa2ra67xbghvfnw6wxku/./", ":")
setenv("GENRICH_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/genrich-0.6-korfe7tzyvxhpa2ra67xbghvfnw6wxku")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
