-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:50.334102
--
-- smartdenovo@master%gcc@11.3.0 build_system=makefile patches=9f514ed arch=linux-ubuntu22.04-x86_64_v3/txf6lfo
--

whatis([[Name : smartdenovo]])
whatis([[Version : master]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : SMARTdenovo is a de novo assembler for PacBio and Oxford Nanopore (ONT) data.]])

help([[SMARTdenovo is a de novo assembler for PacBio and Oxford Nanopore (ONT)
data.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/smartdenovo-master-txf6lfotuujrjhtnebxzl4nool5jipji/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/smartdenovo-master-txf6lfotuujrjhtnebxzl4nool5jipji/./", ":")
setenv("SMARTDENOVO_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/smartdenovo-master-txf6lfotuujrjhtnebxzl4nool5jipji")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
