-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:43.014285
--
-- bowtie@1.3.0%gcc@9.5.0~tbb build_system=makefile patches=55bcf00 arch=linux-ubuntu22.04-x86_64_v3/4y74djj
--

whatis([[Name : bowtie]])
whatis([[Version : 1.3.0]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Bowtie is an ultrafast, memory-efficient short read aligner for short DNA sequences (reads) from next-gen sequencers.]])

help([[Bowtie is an ultrafast, memory-efficient short read aligner for short
DNA sequences (reads) from next-gen sequencers.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/bowtie-1.3.0-4y74djjrel6vrmlmbvwlzunmojpu2bvp/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/bowtie-1.3.0-4y74djjrel6vrmlmbvwlzunmojpu2bvp/./", ":")
setenv("BOWTIE_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/bowtie-1.3.0-4y74djjrel6vrmlmbvwlzunmojpu2bvp")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
