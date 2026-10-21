-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:25.828998
--
-- minced@0.3.2%gcc@9.5.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/4fkg6ka
--

whatis([[Name : minced]])
whatis([[Version : 0.3.2]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : MinCED is a program to find Clustered Regularly Interspaced Short Palindromic Repeats (CRISPRs) in full genomes or environmental datasets such as metagenomes, in which sequence size can be anywhere from 100 to 800 bp.]])

help([[MinCED is a program to find Clustered Regularly Interspaced Short
Palindromic Repeats (CRISPRs) in full genomes or environmental datasets
such as metagenomes, in which sequence size can be anywhere from 100 to
800 bp.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/minced-0.3.2-4fkg6kapgy3axpan2tuw6j2vslypy5tz/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/minced-0.3.2-4fkg6kapgy3axpan2tuw6j2vslypy5tz/./", ":")
setenv("MINCED_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/minced-0.3.2-4fkg6kapgy3axpan2tuw6j2vslypy5tz")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
