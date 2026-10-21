-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-18 10:54:02.000422
--
-- bowtie2@2.4.2%gcc@9.5.0 build_system=makefile arch=linux-ubuntu22.04-x86_64_v3/33v3qe5
--

whatis([[Name : bowtie2]])
whatis([[Version : 2.4.2]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Bowtie 2 is an ultrafast and memory-efficient tool for aligning sequencing reads to long reference sequences]])

help([[Bowtie 2 is an ultrafast and memory-efficient tool for aligning
sequencing reads to long reference sequences]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/bowtie2-2.4.2-33v3qe5t7zadfkgvru5if2qaniiey3ik/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/bowtie2-2.4.2-33v3qe5t7zadfkgvru5if2qaniiey3ik/./", ":")
setenv("BOWTIE2_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/bowtie2-2.4.2-33v3qe5t7zadfkgvru5if2qaniiey3ik")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
