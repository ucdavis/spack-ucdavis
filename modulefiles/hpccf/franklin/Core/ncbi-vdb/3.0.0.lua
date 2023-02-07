-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:48.184030
--
-- ncbi-vdb@3.0.0%gcc@9.5.0~ipo build_system=cmake build_type=RelWithDebInfo arch=linux-ubuntu22.04-x86_64_v3/uzb37rh
--

whatis([[Name : ncbi-vdb]])
whatis([[Version : 3.0.0]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : The SRA Toolkit and SDK from NCBI is a collection of tools and libraries for using data in the INSDC Sequence Read Archives. This package contains the interface to the VDB.]])

help([[The SRA Toolkit and SDK from NCBI is a collection of tools and libraries
for using data in the INSDC Sequence Read Archives. This package
contains the interface to the VDB.]])



prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/ncbi-vdb-3.0.0-uzb37rhjfjqpmayfsh6doje23eulj6ep/./", ":")
setenv("NCBI_VDB_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/ncbi-vdb-3.0.0-uzb37rhjfjqpmayfsh6doje23eulj6ep")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
