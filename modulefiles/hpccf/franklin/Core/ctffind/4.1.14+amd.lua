-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-05-12 12:27:44.945732
--
-- ctffind@4.1.14%gcc@11.3.0+openmp build_system=autotools patches=d2d349c arch=linux-ubuntu22.04-zen2/bhdvx7a
--

whatis([[Name : ctffind]])
whatis([[Version : 4.1.14]])
whatis([[Target : zen2]])
whatis([[Short description : Fast and accurate defocus estimation from electron micrographs.]])
whatis([[Configure options : --disable-debugmode --disable-mkl CPPFLAGS=-I/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/amdfftw-3.2-ndyyfbozjsv7mtlle232xjum5zk4cdwa/include LDFLAGS=-L/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/amdfftw-3.2-ndyyfbozjsv7mtlle232xjum5zk4cdwa/lib -lfftw3 --enable-openmp]])

help([[Fast and accurate defocus estimation from electron micrographs.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/ctffind-4.1.14-bhdvx7asemawoj332xvp7uh4ls7u46hn/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/ctffind-4.1.14-bhdvx7asemawoj332xvp7uh4ls7u46hn/./", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/libx11-1.7.0-37huyicewgwa4it26lyc7hrklw2g6q6o/share/X11/locale", ":")
setenv("CTFFIND_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/ctffind-4.1.14-bhdvx7asemawoj332xvp7uh4ls7u46hn")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
