-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:48.000291
--
-- ncbi-rmblastn@2.11.0%gcc@9.5.0 build_system=autotools patches=ce985ab arch=linux-ubuntu22.04-x86_64_v3/moprdi2
--

whatis([[Name : ncbi-rmblastn]])
whatis([[Version : 2.11.0]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : RMBlast search engine for NCBI]])
whatis([[Configure options : --with-mt --without-debug --without-krb5 --without-openssl --without-libuv --with-projects=scripts/projects/rmblastn/project.lst]])

help([[RMBlast search engine for NCBI]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/ncbi-rmblastn-2.11.0-moprdi2gjzaajppx7iylx6ehfknkkpjh/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/ncbi-rmblastn-2.11.0-moprdi2gjzaajppx7iylx6ehfknkkpjh/./", ":")
setenv("NCBI_RMBLASTN_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/ncbi-rmblastn-2.11.0-moprdi2gjzaajppx7iylx6ehfknkkpjh")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
