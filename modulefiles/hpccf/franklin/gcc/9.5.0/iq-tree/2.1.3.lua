-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-18 10:54:05.674260
--
-- iq-tree@2.1.3%gcc@9.5.0~ipo+lsd2~mpi+openmp build_system=cmake build_type=RelWithDebInfo arch=linux-ubuntu22.04-x86_64_v3/4oii5rj
--

whatis([[Name : iq-tree]])
whatis([[Version : 2.1.3]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : IQ-TREE Efficient software for phylogenomic inference]])
whatis([[Configure options : -DUSE_LSD2=ON -DIQTREE_FLAGS=omp]])

help([[IQ-TREE Efficient software for phylogenomic inference]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/iq-tree-2.1.3-4oii5rjtrgimecouke7s3xsu5swe7yl4/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/iq-tree-2.1.3-4oii5rjtrgimecouke7s3xsu5swe7yl4/./", ":")
setenv("IQ_TREE_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/iq-tree-2.1.3-4oii5rjtrgimecouke7s3xsu5swe7yl4")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
