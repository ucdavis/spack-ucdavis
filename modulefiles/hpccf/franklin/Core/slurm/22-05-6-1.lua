-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-25 13:33:55.476048
--
-- slurm@22-05-6-1%gcc@11.3.0~gtk~hdf5+hwloc+mariadb+pmix+readline+restd build_system=autotools sysconfdir=/etc/slurm arch=linux-ubuntu22.04-x86_64_v3/3dz7gzs
--

whatis([[Name : slurm]])
whatis([[Version : 22-05-6-1]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Slurm is an open source, fault-tolerant, and highly scalable cluster management and job scheduling system for large and small Linux clusters.]])
whatis([[Configure options : --with-libcurl=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/curl-7.85.0-ag5ukq5tdrrooskersye6ysy3sdozprj --with-json=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/json-c-0.16-gd6nsl22p3irilm354sf2yjov43nw43l --with-lz4=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/lz4-1.9.4-pmhn4z7tdvrjqvqqitqjbbd7keqtfcpp --with-munge=/usr --with-ssl=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openssl-1.1.1s-wyam5dezc5a45ygkuqanhvkp2e7tcxd6 --with-zlib=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/zlib-1.2.13-r25gtq3tqq464wdldy252urtjxspz7ln --disable-gtktest --without-hdf5 --enable-slurmrestd --with-http-parser=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/http-parser-2.9.4-iio2oua3skccilrbci6nmltouc7mrn5x --with-jwt=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/libjwt-1.13.1-g4wv7qpipedcp7pxkw3s5wskbpylsqhg --with-hwloc=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/hwloc-2.8.0-we7qgbmgvhlep6h7cown7njd76rec6vr --with-pmix=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/pmix-4.1.2-uc3xvg5kif37urqmcdzjqca47terufuv --sysconfdir=/etc/slurm]])

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

prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/slurm-22-05-6-1-3dz7gzsvu525mdhjtnzd22hruq4n4cdw/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/slurm-22-05-6-1-3dz7gzsvu525mdhjtnzd22hruq4n4cdw/./share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/slurm-22-05-6-1-3dz7gzsvu525mdhjtnzd22hruq4n4cdw/./", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/libx11-1.7.0-37huyicewgwa4it26lyc7hrklw2g6q6o/share/X11/locale", ":")
setenv("SLURM_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/slurm-22-05-6-1-3dz7gzsvu525mdhjtnzd22hruq4n4cdw")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end