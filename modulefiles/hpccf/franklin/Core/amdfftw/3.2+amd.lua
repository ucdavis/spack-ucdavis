-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-05-22 12:32:52.493150
--
-- amdfftw@3.2%gcc@11.3.0~amd-app-opt~amd-dynamic-dispatcher~amd-fast-planner~amd-mpi-vader-limit~amd-top-n-planner~amd-trans~debug+mpi+openmp+shared~static~threads build_system=autotools precision=double,float arch=linux-ubuntu22.04-zen2/wzyaqiv
--

whatis([[Name : amdfftw]])
whatis([[Version : 3.2]])
whatis([[Target : zen2]])
whatis([[Short description : FFTW (AMD Optimized version) is a comprehensive collection of fast C routines for computing the Discrete Fourier Transform (DFT) and various special cases thereof.]])

help([[FFTW (AMD Optimized version) is a comprehensive collection of fast C
routines for computing the Discrete Fourier Transform (DFT) and various
special cases thereof. It is an open-source implementation of the Fast
Fourier transform algorithm. It can compute transforms of real and
complex-values arrays of arbitrary size and dimension. AMD Optimized
FFTW is the optimized FFTW implementation targeted for AMD CPUs. For
single precision build, please use precision value as float. Example :
spack install amdfftw precision=float]])



prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/amdfftw-3.2-wzyaqiv4fmbki5nzpl7ajsktywdl4u2g/lib", ":")
prepend_path("CPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/amdfftw-3.2-wzyaqiv4fmbki5nzpl7ajsktywdl4u2g/include", ":")
prepend_path("C_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/amdfftw-3.2-wzyaqiv4fmbki5nzpl7ajsktywdl4u2g/include", ":")
prepend_path("CPLUS_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/amdfftw-3.2-wzyaqiv4fmbki5nzpl7ajsktywdl4u2g/include", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/amdfftw-3.2-wzyaqiv4fmbki5nzpl7ajsktywdl4u2g/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/amdfftw-3.2-wzyaqiv4fmbki5nzpl7ajsktywdl4u2g/./share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/amdfftw-3.2-wzyaqiv4fmbki5nzpl7ajsktywdl4u2g/./lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/amdfftw-3.2-wzyaqiv4fmbki5nzpl7ajsktywdl4u2g/./", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/libx11-1.7.0-37huyicewgwa4it26lyc7hrklw2g6q6o/share/X11/locale", ":")
setenv("AMDFFTW_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/amdfftw-3.2-wzyaqiv4fmbki5nzpl7ajsktywdl4u2g")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
