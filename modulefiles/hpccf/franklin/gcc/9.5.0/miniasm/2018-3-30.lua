-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-18 10:54:06.680921
--
-- miniasm@2018-3-30%gcc@9.5.0 build_system=makefile arch=linux-ubuntu22.04-x86_64_v3/dxog2vz
--

whatis([[Name : miniasm]])
whatis([[Version : 2018-3-30]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Miniasm is a very fast OLC-based de novo assembler for noisy long reads.]])

help([[Miniasm is a very fast OLC-based de novo assembler for noisy long reads.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/miniasm-2018-3-30-dxog2vz6tgy5pgo5uksbvvi77qncumvn/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/miniasm-2018-3-30-dxog2vz6tgy5pgo5uksbvvi77qncumvn/./", ":")
setenv("MINIASM_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/miniasm-2018-3-30-dxog2vz6tgy5pgo5uksbvvi77qncumvn")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
