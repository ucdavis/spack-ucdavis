-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:19.041959
--
-- emboss@6.6.0%gcc@9.5.0 build_system=autotools arch=linux-ubuntu22.04-x86_64_v3/zzxly7j
--

whatis([[Name : emboss]])
whatis([[Version : 6.6.0]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : EMBOSS is a free Open Source software analysis package specially developed for the needs of the molecular biology (e.g. EMBnet) user community]])

help([[EMBOSS is a free Open Source software analysis package specially
developed for the needs of the molecular biology (e.g. EMBnet) user
community]])



prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/emboss-6.6.0-zzxly7j6t7c5654sukirzyhvwuccn4tq/lib", ":")
prepend_path("CPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/emboss-6.6.0-zzxly7j6t7c5654sukirzyhvwuccn4tq/include", ":")
prepend_path("C_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/emboss-6.6.0-zzxly7j6t7c5654sukirzyhvwuccn4tq/include", ":")
prepend_path("CPLUS_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/emboss-6.6.0-zzxly7j6t7c5654sukirzyhvwuccn4tq/include", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/emboss-6.6.0-zzxly7j6t7c5654sukirzyhvwuccn4tq/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/emboss-6.6.0-zzxly7j6t7c5654sukirzyhvwuccn4tq/./", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/libx11-1.7.0-hbjdyk7tsewaqj7p6zkuaktdslrrl2lq/share/X11/locale", ":")
setenv("EMBOSS_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/emboss-6.6.0-zzxly7j6t7c5654sukirzyhvwuccn4tq")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
