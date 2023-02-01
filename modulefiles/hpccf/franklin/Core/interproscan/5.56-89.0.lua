-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:46.532680
--
-- interproscan@5.56-89.0%gcc@9.5.0 build_system=generic patches=6a81cbb arch=linux-ubuntu22.04-x86_64_v3/dojta3t
--

whatis([[Name : interproscan]])
whatis([[Version : 5.56-89.0]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : InterProScan is the software package that allows sequences (protein and nucleic) to be scanned against InterPro's signatures. Signatures are predictive models, provided by several different databases, that make up the InterPro consortium.]])

help([[InterProScan is the software package that allows sequences (protein and
nucleic) to be scanned against InterPro's signatures. Signatures are
predictive models, provided by several different databases, that make up
the InterPro consortium.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/interproscan-5.56-89.0-dojta3ttmuxnxdymq3l3lpg3xpfen2b6/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/interproscan-5.56-89.0-dojta3ttmuxnxdymq3l3lpg3xpfen2b6/./", ":")
setenv("INTERPROSCAN_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/interproscan-5.56-89.0-dojta3ttmuxnxdymq3l3lpg3xpfen2b6")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
