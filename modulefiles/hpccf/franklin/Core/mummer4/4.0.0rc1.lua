-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:47.918637
--
-- mummer4@4.0.0rc1%gcc@9.5.0 build_system=autotools arch=linux-ubuntu22.04-x86_64_v3/vxii2wi
--

whatis([[Name : mummer4]])
whatis([[Version : 4.0.0rc1]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : MUMmer is a versatil alignment tool for DNA and protein sequences.]])

help([[MUMmer is a versatil alignment tool for DNA and protein sequences.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mummer4-4.0.0rc1-vxii2wi4aqlgui3jyme2vlcbvzsnczdn/./bin", ":")
prepend_path("PKG_CONFIG_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mummer4-4.0.0rc1-vxii2wi4aqlgui3jyme2vlcbvzsnczdn/./lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mummer4-4.0.0rc1-vxii2wi4aqlgui3jyme2vlcbvzsnczdn/./", ":")
setenv("MUMMER4_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mummer4-4.0.0rc1-vxii2wi4aqlgui3jyme2vlcbvzsnczdn")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
