-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:43.450710
--
-- cap3@2015-02-11%gcc@11.3.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/opbjz4v
--

whatis([[Name : cap3]])
whatis([[Version : 2015-02-11]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : CAP3 is DNA Sequence Assembly Program]])

help([[CAP3 is DNA Sequence Assembly Program]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/cap3-2015-02-11-opbjz4vorebwb5wzcqtra7bkgwyrlghv/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/cap3-2015-02-11-opbjz4vorebwb5wzcqtra7bkgwyrlghv/./", ":")
setenv("CAP3_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/cap3-2015-02-11-opbjz4vorebwb5wzcqtra7bkgwyrlghv")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
