-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-05-11 15:18:44.727205
--
-- patchelf@0.16.1%gcc@11.3.0 build_system=autotools arch=linux-ubuntu22.04-x86_64/4izweti
--

whatis([[Name : patchelf]])
whatis([[Version : 0.16.1]])
whatis([[Target : x86_64]])
whatis([[Short description : PatchELF is a small utility to modify the dynamic linker and RPATH of ELF executables.]])

help([[PatchELF is a small utility to modify the dynamic linker and RPATH of
ELF executables.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-11.3.0/patchelf-0.16.1-4izwetii2to3vb352gz5n2u6ue2zzy2u/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-11.3.0/patchelf-0.16.1-4izwetii2to3vb352gz5n2u6ue2zzy2u/./share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-11.3.0/patchelf-0.16.1-4izwetii2to3vb352gz5n2u6ue2zzy2u/./", ":")
setenv("PATCHELF_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-11.3.0/patchelf-0.16.1-4izwetii2to3vb352gz5n2u6ue2zzy2u")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
