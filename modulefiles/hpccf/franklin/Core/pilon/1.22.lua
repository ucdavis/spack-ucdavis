-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:28.051727
--
-- pilon@1.22%gcc@9.5.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/lnd6scq
--

whatis([[Name : pilon]])
whatis([[Version : 1.22]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Pilon is an automated genome assembly improvement and variant detection tool.]])

help([[Pilon is an automated genome assembly improvement and variant detection
tool.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/pilon-1.22-lnd6scq7bcaamkwa657utrwqg7smomud/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/pilon-1.22-lnd6scq7bcaamkwa657utrwqg7smomud/./", ":")
setenv("PILON_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/pilon-1.22-lnd6scq7bcaamkwa657utrwqg7smomud")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
