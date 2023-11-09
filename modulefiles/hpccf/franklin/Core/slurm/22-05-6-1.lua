-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-06-05 16:40:46.641566
--
-- slurm@22-05-6-1%gcc@11.3.0~gtk~hdf5+hwloc+mariadb+pmix+readline+restd build_system=autotools sysconfdir=/share/apps/spack/environments/cluster-core/view/etc/ arch=linux-ubuntu22.04-x86_64_v3/dgtqubi
--

whatis([[Name : slurm]])
whatis([[Version : 22-05-6-1]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Slurm is an open source, fault-tolerant, and highly scalable cluster management and job scheduling system for large and small Linux clusters.]])
whatis([[Configure options : --with-libcurl=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/curl-7.85.0-ag5ukq5tdrrooskersye6ysy3sdozprj --with-json=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/json-c-0.16-q4x3pbztc5tdl4sdx2a3xbspqwnno2tr --with-lz4=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/lz4-1.9.4-pmhn4z7tdvrjqvqqitqjbbd7keqtfcpp --with-munge=/usr --with-ssl=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openssl-1.1.1s-wyam5dezc5a45ygkuqanhvkp2e7tcxd6 --with-zlib=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/zlib-1.2.13-r25gtq3tqq464wdldy252urtjxspz7ln --disable-gtktest --without-hdf5 --enable-slurmrestd --with-http-parser=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/http-parser-2.9.4-iio2oua3skccilrbci6nmltouc7mrn5x --with-jwt=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/libjwt-1.13.1-2ccxsx6aaniwjrnjg7hm2puecxtwanpc --with-hwloc=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/hwloc-2.8.0-hwfibpmbrcgtjoglao3z5itozvgqmoa6 --with-pmix=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/pmix-4.1.2-6gsyachlobhzj6tskq2li4rjhpla23om --sysconfdir=/share/apps/spack/environments/cluster-core/view/etc/]])

help([[Slurm is an open source, fault-tolerant, and highly scalable cluster
management and job scheduling system for large and small Linux clusters.
Slurm requires no kernel modifications for its operation and is
relatively self-contained. As a cluster workload manager, Slurm has
three key functions. First, it allocates exclusive and/or non-exclusive
access to resources (compute nodes) to users for some duration of time
so they can perform work. Second, it provides a framework for starting,
executing, and monitoring work (normally a parallel job) on the set of
allocated nodes. Finally, it arbitrates contention for resources by
managing a queue of pending work.]])


depends_on("hwloc/2.8.0")
depends_on("pmix/4.1.2")

prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/slurm-22-05-6-1-dgtqubiqv6wqusaxuiyt6fa6hw5shrf3/lib", ":")
prepend_path("CPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/slurm-22-05-6-1-dgtqubiqv6wqusaxuiyt6fa6hw5shrf3/include", ":")
prepend_path("C_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/slurm-22-05-6-1-dgtqubiqv6wqusaxuiyt6fa6hw5shrf3/include", ":")
prepend_path("CPLUS_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/slurm-22-05-6-1-dgtqubiqv6wqusaxuiyt6fa6hw5shrf3/include", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/slurm-22-05-6-1-dgtqubiqv6wqusaxuiyt6fa6hw5shrf3/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/slurm-22-05-6-1-dgtqubiqv6wqusaxuiyt6fa6hw5shrf3/./share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/slurm-22-05-6-1-dgtqubiqv6wqusaxuiyt6fa6hw5shrf3/./", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/libx11-1.7.0-37huyicewgwa4it26lyc7hrklw2g6q6o/share/X11/locale", ":")
setenv("SLURM_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/slurm-22-05-6-1-dgtqubiqv6wqusaxuiyt6fa6hw5shrf3")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
