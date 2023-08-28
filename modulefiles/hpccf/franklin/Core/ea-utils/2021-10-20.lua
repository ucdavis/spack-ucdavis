-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:18.889852
--
-- ea-utils@2021-10-20%gcc@9.5.0 build_system=makefile arch=linux-ubuntu22.04-x86_64_v3/zm4onet
--

whatis([[Name : ea-utils]])
whatis([[Version : 2021-10-20]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Command-line tools for processing biological sequencing data. Barcode demultiplexing, adapter trimming, etc. Primarily written to support an Illumina based pipeline - but should work with any FASTQs.]])

help([[Command-line tools for processing biological sequencing data. Barcode
demultiplexing, adapter trimming, etc. Primarily written to support an
Illumina based pipeline - but should work with any FASTQs.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/ea-utils-2021-10-20-zm4onetrmzwqttfccvizqps6vsafqdj5/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/ea-utils-2021-10-20-zm4onetrmzwqttfccvizqps6vsafqdj5/./", ":")
setenv("EA_UTILS_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/ea-utils-2021-10-20-zm4onetrmzwqttfccvizqps6vsafqdj5")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
