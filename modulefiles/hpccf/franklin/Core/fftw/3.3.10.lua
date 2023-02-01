-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 14:39:20.089861
--
-- fftw@3.3.10%gcc@11.3.0+mpi+openmp~pfft_patches build_system=autotools precision=double,float arch=linux-ubuntu22.04-x86_64_v3/luajt64
--

whatis([[Name : fftw]])
whatis([[Version : 3.3.10]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : FFTW is a C subroutine library for computing the discrete Fourier transform (DFT) in one or more dimensions, of arbitrary input size, and of both real and complex data (as well as of even/odd data, i.e. the discrete cosine/sine transforms or DCT/DST). We believe that FFTW, which is free software, should become the FFT library of choice for most applications.]])

help([[FFTW is a C subroutine library for computing the discrete Fourier
transform (DFT) in one or more dimensions, of arbitrary input size, and
of both real and complex data (as well as of even/odd data, i.e. the
discrete cosine/sine transforms or DCT/DST). We believe that FFTW, which
is free software, should become the FFT library of choice for most
applications.]])


depends_on("openmpi/4.1.4")

prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/fftw-3.3.10-luajt64gvaymh5rtj6z3hddvl6mhpchv/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/fftw-3.3.10-luajt64gvaymh5rtj6z3hddvl6mhpchv/./share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/fftw-3.3.10-luajt64gvaymh5rtj6z3hddvl6mhpchv/./lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/fftw-3.3.10-luajt64gvaymh5rtj6z3hddvl6mhpchv/./", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/libx11-1.7.0-37huyicewgwa4it26lyc7hrklw2g6q6o/share/X11/locale", ":")
setenv("FFTW_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/fftw-3.3.10-luajt64gvaymh5rtj6z3hddvl6mhpchv")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
