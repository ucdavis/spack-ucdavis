-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-02-16 09:24:13.243385
--
-- ant@1.10.7%gcc@11.3.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/vmddnjt
--

whatis([[Name : ant]])
whatis([[Version : 1.10.7]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Apache Ant is a Java library and command-line tool whose mission is to drive processes described in build files as targets and extension points dependent upon each other ]])

help([[Apache Ant is a Java library and command-line tool whose mission is to
drive processes described in build files as targets and extension points
dependent upon each other]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/ant-1.10.7-vmddnjtpa3qgdvxwghk2u33j6bl67rfm/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/ant-1.10.7-vmddnjtpa3qgdvxwghk2u33j6bl67rfm/./", ":")
setenv("ANT_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/ant-1.10.7-vmddnjtpa3qgdvxwghk2u33j6bl67rfm")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
