-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:46.806535
--
-- kmergenie@1.7044%gcc@9.5.0 build_system=makefile arch=linux-ubuntu22.04-x86_64_v3/bid4rlv
--

whatis([[Name : kmergenie]])
whatis([[Version : 1.7044]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : KmerGenie estimates the best k-mer length for genome de novo assembly.]])

help([[KmerGenie estimates the best k-mer length for genome de novo assembly.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/kmergenie-1.7044-bid4rlvmftoglmycrm5klry43joah663/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/kmergenie-1.7044-bid4rlvmftoglmycrm5klry43joah663/./", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/py-setuptools-59.4.0-ip3wvqgn3ziq6rryvl4uedzbyzzdhcqk/lib/python3.9/site-packages", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/libx11-1.7.0-hbjdyk7tsewaqj7p6zkuaktdslrrl2lq/share/X11/locale", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/gobject-introspection-1.72.0-b2iz2jpkuoh6h7qkutv2rsuayhlwbmqz/share", ":")
prepend_path("GI_TYPELIB_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/gobject-introspection-1.72.0-b2iz2jpkuoh6h7qkutv2rsuayhlwbmqz/lib/girepository-1.0", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/harfbuzz-5.1.0-solnh5punqcbdsvyrb3lqdozj6npw4up/share", ":")
prepend_path("GI_TYPELIB_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/harfbuzz-5.1.0-solnh5punqcbdsvyrb3lqdozj6npw4up/lib/girepository-1.0", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/pango-1.50.7-udnzood76r3l27nnu46q6t6rl2x4symg/share", ":")
prepend_path("GI_TYPELIB_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/pango-1.50.7-udnzood76r3l27nnu46q6t6rl2x4symg/lib/girepository-1.0", ":")
prepend_path("TCLLIBPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/tk-8.6.11-k3ba2uzw3sxvat4xsl3qkz7etawg23nv/lib", " ")
setenv("R_HOME", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/r-4.2.2-5fyqe7ajuirvo4xugio636of5354lnxn/rlib/R")
setenv("KMERGENIE_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/kmergenie-1.7044-bid4rlvmftoglmycrm5klry43joah663")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
