-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-09-12 14:17:17.690730
--
-- jdk@17.0.1%gcc@11.3.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/brypxck
--

whatis([[Name : jdk]])
whatis([[Version : 17.0.1]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : The Java Development Kit (JDK) released by Oracle Corporation in the form of a binary product aimed at Java developers. Includes a complete JRE plus tools for developing, debugging, and monitoring Java applications.]])

help([[The Java Development Kit (JDK) released by Oracle Corporation in the
form of a binary product aimed at Java developers. Includes a complete
JRE plus tools for developing, debugging, and monitoring Java
applications.]])



prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/jdk-17.0.1-brypxckryxybad5tpn2qfhoxfe7vph4k/lib", ":")
prepend_path("CPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/jdk-17.0.1-brypxckryxybad5tpn2qfhoxfe7vph4k/include", ":")
prepend_path("C_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/jdk-17.0.1-brypxckryxybad5tpn2qfhoxfe7vph4k/include", ":")
prepend_path("CPLUS_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/jdk-17.0.1-brypxckryxybad5tpn2qfhoxfe7vph4k/include", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/jdk-17.0.1-brypxckryxybad5tpn2qfhoxfe7vph4k/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/jdk-17.0.1-brypxckryxybad5tpn2qfhoxfe7vph4k/./man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/jdk-17.0.1-brypxckryxybad5tpn2qfhoxfe7vph4k/./", ":")
setenv("JAVA_HOME", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/jdk-17.0.1-brypxckryxybad5tpn2qfhoxfe7vph4k")
setenv("JDK_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/jdk-17.0.1-brypxckryxybad5tpn2qfhoxfe7vph4k")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
