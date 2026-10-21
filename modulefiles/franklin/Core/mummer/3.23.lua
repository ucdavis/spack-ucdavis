-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:26.523200
--
-- mummer@3.23%gcc@9.5.0 build_system=generic patches=05f53ea,c23ea85 arch=linux-ubuntu22.04-x86_64_v3/izdpe2y
--

whatis([[Name : mummer]])
whatis([[Version : 3.23]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : MUMmer is a system for rapidly aligning entire genomes.]])

help([[MUMmer is a system for rapidly aligning entire genomes.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mummer-3.23-izdpe2y7w2wlag6635mmfkbm7c7f6xat/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mummer-3.23-izdpe2y7w2wlag6635mmfkbm7c7f6xat/./", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/libx11-1.7.0-hbjdyk7tsewaqj7p6zkuaktdslrrl2lq/share/X11/locale", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/gobject-introspection-1.72.0-b2iz2jpkuoh6h7qkutv2rsuayhlwbmqz/share", ":")
prepend_path("GI_TYPELIB_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/gobject-introspection-1.72.0-b2iz2jpkuoh6h7qkutv2rsuayhlwbmqz/lib/girepository-1.0", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/harfbuzz-5.1.0-solnh5punqcbdsvyrb3lqdozj6npw4up/share", ":")
prepend_path("GI_TYPELIB_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/harfbuzz-5.1.0-solnh5punqcbdsvyrb3lqdozj6npw4up/lib/girepository-1.0", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/pango-1.50.7-udnzood76r3l27nnu46q6t6rl2x4symg/share", ":")
prepend_path("GI_TYPELIB_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/pango-1.50.7-udnzood76r3l27nnu46q6t6rl2x4symg/lib/girepository-1.0", ":")
setenv("MUMMER_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mummer-3.23-izdpe2y7w2wlag6635mmfkbm7c7f6xat")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
