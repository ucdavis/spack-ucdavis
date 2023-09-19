-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:26.800994
--
-- muscle@3.8.1551%gcc@9.5.0 build_system=makefile arch=linux-ubuntu22.04-x86_64_v3/446y6zx
--

whatis([[Name : muscle]])
whatis([[Version : 3.8.1551]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : MUSCLE is one of the best-performing multiple alignment programs according to published benchmark tests, with accuracy and speed that are consistently better than CLUSTALW.]])

help([[MUSCLE is one of the best-performing multiple alignment programs
according to published benchmark tests, with accuracy and speed that are
consistently better than CLUSTALW.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/muscle-3.8.1551-446y6zxbenjfcuyzz5t2klafyvwp2fox/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/muscle-3.8.1551-446y6zxbenjfcuyzz5t2klafyvwp2fox/./", ":")
setenv("MUSCLE_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/muscle-3.8.1551-446y6zxbenjfcuyzz5t2klafyvwp2fox")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
