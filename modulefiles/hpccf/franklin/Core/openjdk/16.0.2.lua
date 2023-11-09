-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-09-12 14:17:17.858145
--
-- openjdk@16.0.2%gcc@11.3.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/5i2oqs2
--

whatis([[Name : openjdk]])
whatis([[Version : 16.0.2]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : The free and opensource java implementation]])

help([[The free and opensource java implementation]])



prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openjdk-16.0.2-5i2oqs2vg6vyatsgfnj55p4zhpnjqodr/lib", ":")
prepend_path("CPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openjdk-16.0.2-5i2oqs2vg6vyatsgfnj55p4zhpnjqodr/include", ":")
prepend_path("C_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openjdk-16.0.2-5i2oqs2vg6vyatsgfnj55p4zhpnjqodr/include", ":")
prepend_path("CPLUS_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openjdk-16.0.2-5i2oqs2vg6vyatsgfnj55p4zhpnjqodr/include", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openjdk-16.0.2-5i2oqs2vg6vyatsgfnj55p4zhpnjqodr/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openjdk-16.0.2-5i2oqs2vg6vyatsgfnj55p4zhpnjqodr/./", ":")
setenv("JAVA_HOME", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openjdk-16.0.2-5i2oqs2vg6vyatsgfnj55p4zhpnjqodr")
setenv("OPENJDK_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openjdk-16.0.2-5i2oqs2vg6vyatsgfnj55p4zhpnjqodr")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
