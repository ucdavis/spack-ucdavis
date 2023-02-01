-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-18 10:54:08.565105
--
-- ray@2.3.1%gcc@9.5.0~ipo build_system=cmake build_type=RelWithDebInfo arch=linux-ubuntu22.04-x86_64_v3/oidsiuo
--

whatis([[Name : ray]])
whatis([[Version : 2.3.1]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Parallel genome assemblies for parallel DNA sequencing]])

help([[Parallel genome assemblies for parallel DNA sequencing]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/ray-2.3.1-oidsiuoxlcc7y2cyiak6vnci3zzvhdus/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/ray-2.3.1-oidsiuoxlcc7y2cyiak6vnci3zzvhdus/./", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/libx11-1.7.0-hbjdyk7tsewaqj7p6zkuaktdslrrl2lq/share/X11/locale", ":")
setenv("RAY_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/ray-2.3.1-oidsiuoxlcc7y2cyiak6vnci3zzvhdus")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
