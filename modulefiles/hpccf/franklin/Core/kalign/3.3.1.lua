-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:46.726121
--
-- kalign@3.3.1%gcc@9.5.0 build_system=autotools arch=linux-ubuntu22.04-x86_64_v3/xrophrg
--

whatis([[Name : kalign]])
whatis([[Version : 3.3.1]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : A fast multiple sequence alignment program for biological sequences.]])

help([[A fast multiple sequence alignment program for biological sequences.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/kalign-3.3.1-xrophrgcj4twmbyhm5ge42uma7k77xjc/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/kalign-3.3.1-xrophrgcj4twmbyhm5ge42uma7k77xjc/./", ":")
setenv("KALIGN_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/kalign-3.3.1-xrophrgcj4twmbyhm5ge42uma7k77xjc")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
