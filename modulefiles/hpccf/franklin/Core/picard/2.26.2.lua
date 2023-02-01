-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:48.698904
--
-- picard@2.26.2%gcc@9.5.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/w2uidji
--

whatis([[Name : picard]])
whatis([[Version : 2.26.2]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Picard is a set of command line tools for manipulating high-throughput sequencing (HTS) data and formats such as SAM/BAM/CRAM and VCF. ]])

help([[Picard is a set of command line tools for manipulating high-throughput
sequencing (HTS) data and formats such as SAM/BAM/CRAM and VCF.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/picard-2.26.2-w2uidjis5vd6udib6cwmpmkib5mnvgk7/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/picard-2.26.2-w2uidjis5vd6udib6cwmpmkib5mnvgk7/./", ":")
prepend_path("PICARD", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/picard-2.26.2-w2uidjis5vd6udib6cwmpmkib5mnvgk7/bin/picard.jar", ":")
setenv("PICARD_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/picard-2.26.2-w2uidjis5vd6udib6cwmpmkib5mnvgk7")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
