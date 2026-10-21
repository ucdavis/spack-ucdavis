-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:20.000457
--
-- hisat2@2.2.0%gcc@11.3.0 build_system=makefile arch=linux-ubuntu22.04-x86_64_v3/6kbzpuu
--

whatis([[Name : hisat2]])
whatis([[Version : 2.2.0]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : HISAT2 is a fast and sensitive alignment program for mapping next-generation sequencing reads (whole-genome, transcriptome, and exome sequencing data) against the general human population (as well as against a single reference genome).]])

help([[HISAT2 is a fast and sensitive alignment program for mapping next-
generation sequencing reads (whole-genome, transcriptome, and exome
sequencing data) against the general human population (as well as
against a single reference genome).]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/hisat2-2.2.0-6kbzpuuri7sighiziiiqbilcv3cydynr/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/hisat2-2.2.0-6kbzpuuri7sighiziiiqbilcv3cydynr/./", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/hisat2-2.2.0-6kbzpuuri7sighiziiiqbilcv3cydynr", ":")
setenv("HISAT2_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/hisat2-2.2.0-6kbzpuuri7sighiziiiqbilcv3cydynr")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
