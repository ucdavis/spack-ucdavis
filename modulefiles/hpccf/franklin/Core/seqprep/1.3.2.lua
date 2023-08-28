-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:31.296845
--
-- seqprep@1.3.2%gcc@9.5.0 build_system=makefile arch=linux-ubuntu22.04-x86_64_v3/p56xiin
--

whatis([[Name : seqprep]])
whatis([[Version : 1.3.2]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : SeqPrep is a program to merge paired end Illumina reads that are overlapping into a single longer read.]])

help([[SeqPrep is a program to merge paired end Illumina reads that are
overlapping into a single longer read.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/seqprep-1.3.2-p56xiinlgti4yke3xvb3rkxcg6yqeumj/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/seqprep-1.3.2-p56xiinlgti4yke3xvb3rkxcg6yqeumj/./", ":")
setenv("SEQPREP_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/seqprep-1.3.2-p56xiinlgti4yke3xvb3rkxcg6yqeumj")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
