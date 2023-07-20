-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-05-22 12:32:53.541742
--
-- hdf5@1.12.2%gcc@11.3.0+cxx+fortran~hl~ipo~java+mpi+shared~szip~threadsafe+tools api=default build_system=cmake build_type=RelWithDebInfo arch=linux-ubuntu22.04-x86_64_v3/4uktofc
--

whatis([[Name : hdf5]])
whatis([[Version : 1.12.2]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : HDF5 is a data model, library, and file format for storing and managing data. It supports an unlimited variety of datatypes, and is designed for flexible and efficient I/O and for high volume and complex data. ]])
whatis([[Configure options : -DALLOW_UNSUPPORTED:BOOL=ON -DHDF5_BUILD_EXAMPLES:BOOL=OFF -DBUILD_TESTING:BOOL=OFF -DHDF5_ENABLE_Z_LIB_SUPPORT:BOOL=ON -DHDF5_ENABLE_SZIP_SUPPORT:BOOL=OFF -DHDF5_ENABLE_SZIP_ENCODING:BOOL=OFF -DBUILD_SHARED_LIBS:BOOL=ON -DONLY_SHARED_LIBS:BOOL=OFF -DHDF5_ENABLE_PARALLEL:BOOL=ON -DHDF5_ENABLE_THREADSAFE:BOOL=OFF -DHDF5_BUILD_HL_LIB:BOOL=OFF -DHDF5_BUILD_CPP_LIB:BOOL=ON -DHDF5_BUILD_FORTRAN:BOOL=ON -DHDF5_BUILD_JAVA:BOOL=OFF -DHDF5_BUILD_TOOLS:BOOL=ON -DCMAKE_C_COMPILER:STRING=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openmpi-4.1.4-nv3x5mahuyx75v2q4mjbpdqnqiwx7pjo/bin/mpicc -DCMAKE_CXX_COMPILER:STRING=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openmpi-4.1.4-nv3x5mahuyx75v2q4mjbpdqnqiwx7pjo/bin/mpic++ -DCMAKE_Fortran_COMPILER:STRING=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openmpi-4.1.4-nv3x5mahuyx75v2q4mjbpdqnqiwx7pjo/bin/mpif90]])

help([[HDF5 is a data model, library, and file format for storing and managing
data. It supports an unlimited variety of datatypes, and is designed for
flexible and efficient I/O and for high volume and complex data.]])



prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/hdf5-1.12.2-4uktofcmtlj6oir7urjttb3hts5fjf3w/lib", ":")
prepend_path("CPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/hdf5-1.12.2-4uktofcmtlj6oir7urjttb3hts5fjf3w/include", ":")
prepend_path("C_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/hdf5-1.12.2-4uktofcmtlj6oir7urjttb3hts5fjf3w/include", ":")
prepend_path("CPLUS_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/hdf5-1.12.2-4uktofcmtlj6oir7urjttb3hts5fjf3w/include", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/hdf5-1.12.2-4uktofcmtlj6oir7urjttb3hts5fjf3w/./bin", ":")
prepend_path("PKG_CONFIG_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/hdf5-1.12.2-4uktofcmtlj6oir7urjttb3hts5fjf3w/./lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/hdf5-1.12.2-4uktofcmtlj6oir7urjttb3hts5fjf3w/./", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/libx11-1.7.0-37huyicewgwa4it26lyc7hrklw2g6q6o/share/X11/locale", ":")
setenv("HDF5_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/hdf5-1.12.2-4uktofcmtlj6oir7urjttb3hts5fjf3w")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
