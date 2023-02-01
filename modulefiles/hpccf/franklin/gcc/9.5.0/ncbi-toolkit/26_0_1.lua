-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-18 10:54:07.244552
--
-- ncbi-toolkit@26_0_1%gcc@9.5.0~debug build_system=autotools arch=linux-ubuntu22.04-x86_64_v3/jcr6om5
--

whatis([[Name : ncbi-toolkit]])
whatis([[Version : 26_0_1]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : NCBI C++ Toolkit]])
whatis([[Configure options : --without-sybase --without-fastcgi --without-debug]])

help([[NCBI C++ Toolkit]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/ncbi-toolkit-26_0_1-jcr6om5mrxu2tgrs6qmf346tb2dbrfcp/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/ncbi-toolkit-26_0_1-jcr6om5mrxu2tgrs6qmf346tb2dbrfcp/./", ":")
setenv("NCBI_TOOLKIT_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/ncbi-toolkit-26_0_1-jcr6om5mrxu2tgrs6qmf346tb2dbrfcp")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
