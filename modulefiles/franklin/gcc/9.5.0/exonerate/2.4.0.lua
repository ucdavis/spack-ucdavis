-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-18 10:54:02.746918
--
-- exonerate@2.4.0%gcc@9.5.0 build_system=autotools arch=linux-ubuntu22.04-x86_64_v3/jiqar5y
--

whatis([[Name : exonerate]])
whatis([[Version : 2.4.0]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Pairwise sequence alignment of DNA and proteins]])
whatis([[Configure options : --disable-debug --disable-dependency-tracking]])

help([[Pairwise sequence alignment of DNA and proteins]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/exonerate-2.4.0-jiqar5ywnrxvxlbcabi54ak7sayymgbv/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/exonerate-2.4.0-jiqar5ywnrxvxlbcabi54ak7sayymgbv/./share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/exonerate-2.4.0-jiqar5ywnrxvxlbcabi54ak7sayymgbv/./", ":")
setenv("EXONERATE_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/exonerate-2.4.0-jiqar5ywnrxvxlbcabi54ak7sayymgbv")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
