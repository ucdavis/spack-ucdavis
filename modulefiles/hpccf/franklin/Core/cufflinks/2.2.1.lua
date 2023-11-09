-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:18.833581
--
-- cufflinks@2.2.1%gcc@11.3.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/3ozkdou
--

whatis([[Name : cufflinks]])
whatis([[Version : 2.2.1]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Cufflinks assembles transcripts, estimates their abundances, and tests for differential expression and regulation in RNA-Seq samples.]])

help([[Cufflinks assembles transcripts, estimates their abundances, and tests
for differential expression and regulation in RNA-Seq samples.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/cufflinks-2.2.1-3ozkdouuqdd3huw45f3iuzpfqnwzopyg/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/cufflinks-2.2.1-3ozkdouuqdd3huw45f3iuzpfqnwzopyg/./", ":")
setenv("CUFFLINKS_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/cufflinks-2.2.1-3ozkdouuqdd3huw45f3iuzpfqnwzopyg")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
