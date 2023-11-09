-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:17.197341
--
-- aragorn@1.2.38%gcc@11.3.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/5vu2dw4
--

whatis([[Name : aragorn]])
whatis([[Version : 1.2.38]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : ARAGORN, a program to detect tRNA genes and tmRNA genes in nucleotide sequences.]])

help([[ARAGORN, a program to detect tRNA genes and tmRNA genes in nucleotide
sequences.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/aragorn-1.2.38-5vu2dw4e2itxhfxsg22l7qykxaf64s2o/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/aragorn-1.2.38-5vu2dw4e2itxhfxsg22l7qykxaf64s2o/./", ":")
setenv("ARAGORN_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/aragorn-1.2.38-5vu2dw4e2itxhfxsg22l7qykxaf64s2o")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
