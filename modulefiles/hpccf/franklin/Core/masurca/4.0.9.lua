-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:24.957235
--
-- masurca@4.0.9%gcc@9.5.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/c5eoplw
--

whatis([[Name : masurca]])
whatis([[Version : 4.0.9]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : MaSuRCA is whole genome assembly software. It combines the efficiency of the de Bruijn graph and Overlap-Layout-Consensus (OLC) approaches.]])

help([[MaSuRCA is whole genome assembly software. It combines the efficiency of
the de Bruijn graph and Overlap-Layout-Consensus (OLC) approaches.]])



prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/masurca-4.0.9-c5eoplwat4q2dtyh5myv2coirjs3mwzl/lib", ":")
prepend_path("CPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/masurca-4.0.9-c5eoplwat4q2dtyh5myv2coirjs3mwzl/include", ":")
prepend_path("C_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/masurca-4.0.9-c5eoplwat4q2dtyh5myv2coirjs3mwzl/include", ":")
prepend_path("CPLUS_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/masurca-4.0.9-c5eoplwat4q2dtyh5myv2coirjs3mwzl/include", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/masurca-4.0.9-c5eoplwat4q2dtyh5myv2coirjs3mwzl/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/masurca-4.0.9-c5eoplwat4q2dtyh5myv2coirjs3mwzl/./share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/masurca-4.0.9-c5eoplwat4q2dtyh5myv2coirjs3mwzl/./lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/masurca-4.0.9-c5eoplwat4q2dtyh5myv2coirjs3mwzl/./", ":")
setenv("MASURCA_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/masurca-4.0.9-c5eoplwat4q2dtyh5myv2coirjs3mwzl")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
