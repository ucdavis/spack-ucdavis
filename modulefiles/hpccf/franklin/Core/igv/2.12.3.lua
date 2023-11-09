-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:23.573480
--
-- igv@2.12.3%gcc@9.5.0~igvtools build_system=generic arch=linux-ubuntu22.04-x86_64_v3/eithue6
--

whatis([[Name : igv]])
whatis([[Version : 2.12.3]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : The Integrative Genomics Viewer (IGV) is a high-performance visualization tool for interactive exploration of large, integrated genomic datasets. It supports a wide variety of data types, including array-based and next-generation sequence data, and genomic annotations.]])

help([[The Integrative Genomics Viewer (IGV) is a high-performance
visualization tool for interactive exploration of large, integrated
genomic datasets. It supports a wide variety of data types, including
array-based and next-generation sequence data, and genomic annotations.]])



prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/igv-2.12.3-eithue6axjdq7yak32jmdvog5b27pznl/lib", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/igv-2.12.3-eithue6axjdq7yak32jmdvog5b27pznl/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/igv-2.12.3-eithue6axjdq7yak32jmdvog5b27pznl/./", ":")
setenv("IGV_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/igv-2.12.3-eithue6axjdq7yak32jmdvog5b27pznl")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
