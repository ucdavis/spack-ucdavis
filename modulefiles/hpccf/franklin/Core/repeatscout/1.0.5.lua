-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:49.791097
--
-- repeatscout@1.0.5%gcc@9.5.0 build_system=makefile arch=linux-ubuntu22.04-x86_64_v3/jhp35ph
--

whatis([[Name : repeatscout]])
whatis([[Version : 1.0.5]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : RepeatScout - De Novo Repeat Finder, Price A.L., Jones N.C. and Pevzner P.A.]])

help([[RepeatScout - De Novo Repeat Finder, Price A.L., Jones N.C. and Pevzner
P.A.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/repeatscout-1.0.5-jhp35phzevgmvo45rk66wogz7kxt3d2v/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/repeatscout-1.0.5-jhp35phzevgmvo45rk66wogz7kxt3d2v/./", ":")
setenv("REPEATSCOUT_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/repeatscout-1.0.5-jhp35phzevgmvo45rk66wogz7kxt3d2v")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
