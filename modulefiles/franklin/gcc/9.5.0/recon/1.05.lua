-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-18 10:54:08.683155
--
-- recon@1.05%gcc@9.5.0+repeatmasker build_system=makefile patches=18a7a0b arch=linux-ubuntu22.04-x86_64_v3/kgakut3
--

whatis([[Name : recon]])
whatis([[Version : 1.05]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : RECON: a package for automated de novo identification of repeat families from genomic sequences.]])

help([[RECON: a package for automated de novo identification of repeat families
from genomic sequences.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/recon-1.05-kgakut3nykdzfppyfzt3fzqdw4mpuog3/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/recon-1.05-kgakut3nykdzfppyfzt3fzqdw4mpuog3/./", ":")
setenv("RECON_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/recon-1.05-kgakut3nykdzfppyfzt3fzqdw4mpuog3")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
