-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-25 13:33:53.532919
--
-- openmpi@4.1.4%gcc@11.3.0~atomics+cuda~cxx~cxx_exceptions~gpfs~internal-hwloc~java~legacylaunchers~lustre~memchecker~pmi+romio+rsh~singularity+static+vt+wrapper-rpath build_system=autotools cuda_arch=75 fabrics=ucx schedulers=slurm arch=linux-ubuntu22.04-x86_64_v3/gjiqdti
--

whatis([[Name : openmpi]])
whatis([[Version : 4.1.4]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : An open source Message Passing Interface implementation.]])
whatis([[Configure options : --enable-shared --disable-silent-rules --disable-builtin-atomics --without-pmi --enable-static --enable-mpi1-compatibility --without-mxm --without-ofi --without-fca --without-psm --without-psm2 --without-hcoll --without-verbs --without-knem --without-cma --with-ucx=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/ucx-1.13.1-nabnsutc6uz54vi4elfxamotwewr7pxl --without-xpmem --without-cray-xpmem --without-loadleveler --without-lsf --with-slurm --without-sge --without-alps --without-tm --disable-memchecker --with-libevent=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/libevent-2.1.12-7d5va7mlpbbhekswhmbmslxgvvxm7c5i --with-pmix=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/pmix-4.1.2-uc3xvg5kif37urqmcdzjqca47terufuv --with-zlib=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/zlib-1.2.13-r25gtq3tqq464wdldy252urtjxspz7ln --with-hwloc=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/hwloc-2.8.0-we7qgbmgvhlep6h7cown7njd76rec6vr --disable-java --disable-mpi-java --with-gpfs=no --enable-dlopen --with-cuda=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/cuda-11.8.0-rnrv662yr6ozx2cjwobflvwbmuw2ma33 --enable-wrapper-rpath --disable-wrapper-runpath --disable-mpi-cxx --disable-cxx-exceptions]])

help([[An open source Message Passing Interface implementation. The Open MPI
Project is an open source Message Passing Interface implementation that
is developed and maintained by a consortium of academic, research, and
industry partners. Open MPI is therefore able to combine the expertise,
technologies, and resources from all across the High Performance
Computing community in order to build the best MPI library available.
Open MPI offers advantages for system and software vendors, application
developers and computer science researchers.]])


depends_on("cuda/11.8.0")
depends_on("hwloc/2.8.0")
depends_on("pmix/4.1.2")
depends_on("slurm/22-05-6-1")
depends_on("ucx/1.13.1")

prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openmpi-4.1.4-gjiqdtia5wusawcsv7mfe2iamonjhhnt/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openmpi-4.1.4-gjiqdtia5wusawcsv7mfe2iamonjhhnt/./share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openmpi-4.1.4-gjiqdtia5wusawcsv7mfe2iamonjhhnt/./lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openmpi-4.1.4-gjiqdtia5wusawcsv7mfe2iamonjhhnt/./", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/libx11-1.7.0-37huyicewgwa4it26lyc7hrklw2g6q6o/share/X11/locale", ":")
setenv("MPICC", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openmpi-4.1.4-gjiqdtia5wusawcsv7mfe2iamonjhhnt/bin/mpicc")
setenv("MPICXX", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openmpi-4.1.4-gjiqdtia5wusawcsv7mfe2iamonjhhnt/bin/mpic++")
setenv("MPIF77", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openmpi-4.1.4-gjiqdtia5wusawcsv7mfe2iamonjhhnt/bin/mpif77")
setenv("MPIF90", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openmpi-4.1.4-gjiqdtia5wusawcsv7mfe2iamonjhhnt/bin/mpif90")
setenv("OPENMPI_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openmpi-4.1.4-gjiqdtia5wusawcsv7mfe2iamonjhhnt")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
