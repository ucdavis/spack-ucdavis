-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-05-12 12:27:45.506426
--
-- gctf@1.06%gcc@11.3.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/svcstm4
--

whatis([[Name : gctf]])
whatis([[Version : 1.06]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : a GPU accelerated program for Real-Time CTF determination, refinement, evaluation and correction.]])

help([[a GPU accelerated program for Real-Time CTF determination, refinement,
evaluation and correction.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gctf-1.06-svcstm4bl22o654qie6lzkm4fhf2tnnw/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gctf-1.06-svcstm4bl22o654qie6lzkm4fhf2tnnw/./", ":")
setenv("GCTF_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gctf-1.06-svcstm4bl22o654qie6lzkm4fhf2tnnw")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
