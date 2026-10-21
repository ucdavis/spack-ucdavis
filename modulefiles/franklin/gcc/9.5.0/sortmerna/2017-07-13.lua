-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-18 10:54:09.685417
--
-- sortmerna@2017-07-13%gcc@9.5.0~ipo build_system=cmake build_type=RelWithDebInfo arch=linux-ubuntu22.04-x86_64_v3/zutqer2
--

whatis([[Name : sortmerna]])
whatis([[Version : 2017-07-13]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : SortMeRNA is a program tool for filtering, mapping and OTU-picking NGS reads in metatranscriptomic and metagenomic data]])

help([[SortMeRNA is a program tool for filtering, mapping and OTU-picking NGS
reads in metatranscriptomic and metagenomic data]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/sortmerna-2017-07-13-zutqer254f7gnhq4lv6ai7bostc3xgc6/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/sortmerna-2017-07-13-zutqer254f7gnhq4lv6ai7bostc3xgc6/./", ":")
setenv("SORTMERNA_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/sortmerna-2017-07-13-zutqer254f7gnhq4lv6ai7bostc3xgc6")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
