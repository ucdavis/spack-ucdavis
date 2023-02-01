-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:47.706249
--
-- mmseqs2@14-7e284%gcc@9.5.0~ipo~mpi~openmp build_system=cmake build_type=RelWithDebInfo arch=linux-ubuntu22.04-x86_64_v3/bo3aaq2
--

whatis([[Name : mmseqs2]])
whatis([[Version : 14-7e284]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : MMseqs2 (Many-against-Many sequence searching) is a software suite to search and cluster huge protein and nucleotide sequence sets]])
whatis([[Configure options : -DVERSION_OVERRIDE=14-7e284 -DUSE_SYSTEM_ZSTD=1 -DREQUIRE_OPENMP=0 -DHAVE_MPI=0]])

help([[MMseqs2 (Many-against-Many sequence searching) is a software suite to
search and cluster huge protein and nucleotide sequence sets]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mmseqs2-14-7e284-bo3aaq2hnejspm6tsgh6h5rnge4ix6m3/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mmseqs2-14-7e284-bo3aaq2hnejspm6tsgh6h5rnge4ix6m3/./", ":")
setenv("MMSEQS2_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mmseqs2-14-7e284-bo3aaq2hnejspm6tsgh6h5rnge4ix6m3")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
