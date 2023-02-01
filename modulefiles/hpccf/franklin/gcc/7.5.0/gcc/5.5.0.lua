-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 12:59:41.799809
--
-- gcc@5.5.0%gcc@7.5.0~binutils+bootstrap~graphite~nvptx~piclibs~profiled~strip build_system=autotools build_type=RelWithDebInfo languages=c,c++,fortran patches=1ee899a,4661e64,51aebe8,a9762dc arch=linux-ubuntu22.04-x86_64/u7xvjdm
--

whatis([[Name : gcc]])
whatis([[Version : 5.5.0]])
whatis([[Target : x86_64]])
whatis([[Short description : The GNU Compiler Collection includes front ends for C, C++, Objective-C, Fortran, Ada, and Go, as well as libraries for these languages.]])
whatis([[Configure options : --with-pkgversion=Spack GCC --with-bugurl=https://github.com/spack/spack/issues --disable-multilib --enable-languages=c,c++,fortran --disable-nls --disable-canonical-system-headers --enable-bootstrap --with-mpfr-include=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-7.5.0/mpfr-3.1.6-sngyzd5ibstkwmkp2zo4wnplysdwyvz5/include --with-mpfr-lib=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-7.5.0/mpfr-3.1.6-sngyzd5ibstkwmkp2zo4wnplysdwyvz5/lib --with-gmp-include=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-7.5.0/gmp-6.2.1-ag7qsdr2iaenwvf4wuwvs5woa2ztgn46/include --with-gmp-lib=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-7.5.0/gmp-6.2.1-ag7qsdr2iaenwvf4wuwvs5woa2ztgn46/lib --with-mpc-include=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-7.5.0/mpc-1.1.0-mg3o2yxyhci37xufzj66chdf6aingvej/include --with-mpc-lib=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-7.5.0/mpc-1.1.0-mg3o2yxyhci37xufzj66chdf6aingvej/lib --without-isl --with-stage1-ldflags=-Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-7.5.0/gcc-5.5.0-u7xvjdmsc5wlptsasa7zozvswoibp2mm/lib -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-7.5.0/gcc-5.5.0-u7xvjdmsc5wlptsasa7zozvswoibp2mm/lib64 -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-7.5.0/gmp-6.2.1-ag7qsdr2iaenwvf4wuwvs5woa2ztgn46/lib -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-7.5.0/mpc-1.1.0-mg3o2yxyhci37xufzj66chdf6aingvej/lib -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-7.5.0/mpfr-3.1.6-sngyzd5ibstkwmkp2zo4wnplysdwyvz5/lib --with-boot-ldflags=-Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-7.5.0/gcc-5.5.0-u7xvjdmsc5wlptsasa7zozvswoibp2mm/lib -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-7.5.0/gcc-5.5.0-u7xvjdmsc5wlptsasa7zozvswoibp2mm/lib64 -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-7.5.0/gmp-6.2.1-ag7qsdr2iaenwvf4wuwvs5woa2ztgn46/lib -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-7.5.0/mpc-1.1.0-mg3o2yxyhci37xufzj66chdf6aingvej/lib -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-7.5.0/mpfr-3.1.6-sngyzd5ibstkwmkp2zo4wnplysdwyvz5/lib -static-libstdc++ -static-libgcc --with-build-config=spack]])

help([[The GNU Compiler Collection includes front ends for C, C++, Objective-C,
Fortran, Ada, and Go, as well as libraries for these languages.]])

-- Services provided by the package
family("compiler")

-- Loading this module unlocks the path below unconditionally
prepend_path("MODULEPATH", "/share/apps/spack/modulefiles/gcc/5.5.0")



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-7.5.0/gcc-5.5.0-u7xvjdmsc5wlptsasa7zozvswoibp2mm/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-7.5.0/gcc-5.5.0-u7xvjdmsc5wlptsasa7zozvswoibp2mm/./share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-7.5.0/gcc-5.5.0-u7xvjdmsc5wlptsasa7zozvswoibp2mm/./", ":")
setenv("CC", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-7.5.0/gcc-5.5.0-u7xvjdmsc5wlptsasa7zozvswoibp2mm/bin/gcc")
setenv("CXX", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-7.5.0/gcc-5.5.0-u7xvjdmsc5wlptsasa7zozvswoibp2mm/bin/g++")
setenv("FC", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-7.5.0/gcc-5.5.0-u7xvjdmsc5wlptsasa7zozvswoibp2mm/bin/gfortran")
setenv("F77", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-7.5.0/gcc-5.5.0-u7xvjdmsc5wlptsasa7zozvswoibp2mm/bin/gfortran")
setenv("GCC_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-7.5.0/gcc-5.5.0-u7xvjdmsc5wlptsasa7zozvswoibp2mm")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
