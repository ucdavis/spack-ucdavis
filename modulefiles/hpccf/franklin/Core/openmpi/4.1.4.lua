-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-05-12 12:29:34.877505
--
-- openmpi@4.1.4%gcc@11.3.0~atomics+cuda~cxx~cxx_exceptions~gpfs~internal-hwloc~java+legacylaunchers~lustre~memchecker~pmi+romio+rsh~singularity+static+vt+wrapper-rpath build_system=autotools cuda_arch=75 fabrics=ucx schedulers=slurm arch=linux-ubuntu22.04-x86_64_v3/xiv4rbo
--

whatis([[Name : openmpi]])
whatis([[Version : 4.1.4]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : An open source Message Passing Interface implementation.]])
whatis([[Configure options : --enable-shared --disable-silent-rules --disable-builtin-atomics --without-pmi --enable-static --enable-mpi1-compatibility --without-psm2 --without-verbs --without-cma --without-xpmem --without-fca --without-ofi --without-knem --without-mxm --without-psm --with-ucx=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/ucx-1.13.1-nabnsutc6uz54vi4elfxamotwewr7pxl --without-hcoll --without-cray-xpmem --without-tm --without-sge --with-slurm --without-alps --without-loadleveler --without-lsf --disable-memchecker --with-libevent=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/libevent-2.1.12-7d5va7mlpbbhekswhmbmslxgvvxm7c5i --with-pmix=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/pmix-4.1.2-6gsyachlobhzj6tskq2li4rjhpla23om --with-zlib=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/zlib-1.2.13-r25gtq3tqq464wdldy252urtjxspz7ln --with-hwloc=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/hwloc-2.8.0-hwfibpmbrcgtjoglao3z5itozvgqmoa6 --disable-java --disable-mpi-java --with-gpfs=no --enable-dlopen --with-cuda=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/cuda-11.7.1-pkcc5ttbgrknfycfjj3v2lezjcdnlth4 --enable-wrapper-rpath --disable-wrapper-runpath --disable-mpi-cxx --disable-cxx-exceptions]])

help([[An open source Message Passing Interface implementation. The Open MPI
Project is an open source Message Passing Interface implementation that
is developed and maintained by a consortium of academic, research, and
industry partners. Open MPI is therefore able to combine the expertise,
technologies, and resources from all across the High Performance
Computing community in order to build the best MPI library available.
Open MPI offers advantages for system and software vendors, application
developers and computer science researchers.]])


depends_on("cuda/11.7.1")
depends_on("hwloc/2.8.0")
depends_on("pmix/4.1.2")
depends_on("slurm/22-05-6-1")
depends_on("ucx/1.13.1")

prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openmpi-4.1.4-xiv4rbongh75ics6a2hibmtq3i5wwtid/lib", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openmpi-4.1.4-xiv4rbongh75ics6a2hibmtq3i5wwtid/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openmpi-4.1.4-xiv4rbongh75ics6a2hibmtq3i5wwtid/./share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openmpi-4.1.4-xiv4rbongh75ics6a2hibmtq3i5wwtid/./lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openmpi-4.1.4-xiv4rbongh75ics6a2hibmtq3i5wwtid/./", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/libx11-1.7.0-37huyicewgwa4it26lyc7hrklw2g6q6o/share/X11/locale", ":")
setenv("MPICC", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openmpi-4.1.4-xiv4rbongh75ics6a2hibmtq3i5wwtid/bin/mpicc")
setenv("MPICXX", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openmpi-4.1.4-xiv4rbongh75ics6a2hibmtq3i5wwtid/bin/mpic++")
setenv("MPIF77", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openmpi-4.1.4-xiv4rbongh75ics6a2hibmtq3i5wwtid/bin/mpif77")
setenv("MPIF90", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openmpi-4.1.4-xiv4rbongh75ics6a2hibmtq3i5wwtid/bin/mpif90")
setenv("OPENMPI_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openmpi-4.1.4-xiv4rbongh75ics6a2hibmtq3i5wwtid")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
