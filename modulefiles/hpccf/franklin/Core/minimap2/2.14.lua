-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:25.946427
--
-- minimap2@2.14%gcc@9.5.0 build_system=python_pip arch=linux-ubuntu22.04-x86_64_v3/qhomhja
--

whatis([[Name : minimap2]])
whatis([[Version : 2.14]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Minimap2 is a versatile sequence alignment program that aligns DNA or mRNA sequences against a large reference database. Mappy provides a convenient interface to minimap2.]])

help([[Minimap2 is a versatile sequence alignment program that aligns DNA or
mRNA sequences against a large reference database. Mappy provides a
convenient interface to minimap2.]])



prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/minimap2-2.14-qhomhjaijmtolkngyuvunkobn4q4q67c/lib", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/minimap2-2.14-qhomhjaijmtolkngyuvunkobn4q4q67c/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/minimap2-2.14-qhomhjaijmtolkngyuvunkobn4q4q67c/./", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/minimap2-2.14-qhomhjaijmtolkngyuvunkobn4q4q67c/lib/python3.9/site-packages", ":")
setenv("MINIMAP2_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/minimap2-2.14-qhomhjaijmtolkngyuvunkobn4q4q67c")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
