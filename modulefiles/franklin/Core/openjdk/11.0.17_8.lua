-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-09-12 14:17:17.781031
--
-- openjdk@11.0.17_8%gcc@11.3.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/2xrvl5g
--

whatis([[Name : openjdk]])
whatis([[Version : 11.0.17_8]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : The free and opensource java implementation]])

help([[The free and opensource java implementation]])



prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openjdk-11.0.17_8-2xrvl5g5wcmop657pld6dgw57vgnceec/lib", ":")
prepend_path("CPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openjdk-11.0.17_8-2xrvl5g5wcmop657pld6dgw57vgnceec/include", ":")
prepend_path("C_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openjdk-11.0.17_8-2xrvl5g5wcmop657pld6dgw57vgnceec/include", ":")
prepend_path("CPLUS_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openjdk-11.0.17_8-2xrvl5g5wcmop657pld6dgw57vgnceec/include", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openjdk-11.0.17_8-2xrvl5g5wcmop657pld6dgw57vgnceec/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openjdk-11.0.17_8-2xrvl5g5wcmop657pld6dgw57vgnceec/./man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openjdk-11.0.17_8-2xrvl5g5wcmop657pld6dgw57vgnceec/./", ":")
setenv("JAVA_HOME", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openjdk-11.0.17_8-2xrvl5g5wcmop657pld6dgw57vgnceec")
setenv("OPENJDK_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openjdk-11.0.17_8-2xrvl5g5wcmop657pld6dgw57vgnceec")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
