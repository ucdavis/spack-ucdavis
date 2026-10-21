-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:31.346187
--
-- seqtk@1.3%gcc@9.5.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/j5rsjth
--

whatis([[Name : seqtk]])
whatis([[Version : 1.3]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Toolkit for processing sequences in FASTA/Q formats.]])

help([[Toolkit for processing sequences in FASTA/Q formats.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/seqtk-1.3-j5rsjthbuij6xppxlumviuab3iwiy44h/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/seqtk-1.3-j5rsjthbuij6xppxlumviuab3iwiy44h/./", ":")
setenv("SEQTK_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/seqtk-1.3-j5rsjthbuij6xppxlumviuab3iwiy44h")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
