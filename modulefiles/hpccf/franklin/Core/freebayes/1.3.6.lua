-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:19.506980
--
-- freebayes@1.3.6%gcc@9.5.0~strip build_system=meson buildtype=debugoptimized default_library=shared arch=linux-ubuntu22.04-x86_64_v3/fr6esxt
--

whatis([[Name : freebayes]])
whatis([[Version : 1.3.6]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Bayesian haplotype-based genetic polymorphism discovery and genotyping.]])

help([[Bayesian haplotype-based genetic polymorphism discovery and genotyping.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/freebayes-1.3.6-fr6esxt2io6iti7jqnit2u46xcqlekfl/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/freebayes-1.3.6-fr6esxt2io6iti7jqnit2u46xcqlekfl/./", ":")
setenv("FREEBAYES_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/freebayes-1.3.6-fr6esxt2io6iti7jqnit2u46xcqlekfl")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
