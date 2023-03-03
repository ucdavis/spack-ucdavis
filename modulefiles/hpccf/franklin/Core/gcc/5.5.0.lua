-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-03-02 16:30:04.427514
--
-- gcc@5.5.0%gcc@9.5.0~binutils+bootstrap~graphite~nvptx~piclibs~profiled~strip build_system=autotools build_type=RelWithDebInfo languages=c,c++,fortran patches=1ee899a,4661e64,51aebe8,a9762dc arch=linux-ubuntu22.04-x86_64_v3/qd3ezwp
--

whatis([[Name : gcc]])
whatis([[Version : 5.5.0]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : The GNU Compiler Collection includes front ends for C, C++, Objective-C, Fortran, Ada, and Go, as well as libraries for these languages.]])
whatis([[Configure options : --with-pkgversion=Spack GCC --with-bugurl=https://github.com/spack/spack/issues --disable-multilib --enable-languages=c,c++,fortran --disable-nls --disable-canonical-system-headers --enable-bootstrap --with-mpfr-include=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mpfr-3.1.6-pgqxxjemmve553owbfgxizpv4cvsdhae/include --with-mpfr-lib=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mpfr-3.1.6-pgqxxjemmve553owbfgxizpv4cvsdhae/lib --with-gmp-include=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/gmp-6.2.1-e7lp4xf4mn4ny6drson4d4obj2rcb3y3/include --with-gmp-lib=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/gmp-6.2.1-e7lp4xf4mn4ny6drson4d4obj2rcb3y3/lib --with-mpc-include=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mpc-1.1.0-wpwhlhkyebd5cjhuivjojkx73ats4nyw/include --with-mpc-lib=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mpc-1.1.0-wpwhlhkyebd5cjhuivjojkx73ats4nyw/lib --without-isl --with-stage1-ldflags=-Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/gcc-5.5.0-qd3ezwpsl3jooc5tzxzti4xigoor7b2l/lib -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/gcc-5.5.0-qd3ezwpsl3jooc5tzxzti4xigoor7b2l/lib64 -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/gmp-6.2.1-e7lp4xf4mn4ny6drson4d4obj2rcb3y3/lib -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mpc-1.1.0-wpwhlhkyebd5cjhuivjojkx73ats4nyw/lib -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mpfr-3.1.6-pgqxxjemmve553owbfgxizpv4cvsdhae/lib --with-boot-ldflags=-Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/gcc-5.5.0-qd3ezwpsl3jooc5tzxzti4xigoor7b2l/lib -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/gcc-5.5.0-qd3ezwpsl3jooc5tzxzti4xigoor7b2l/lib64 -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/gmp-6.2.1-e7lp4xf4mn4ny6drson4d4obj2rcb3y3/lib -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mpc-1.1.0-wpwhlhkyebd5cjhuivjojkx73ats4nyw/lib -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mpfr-3.1.6-pgqxxjemmve553owbfgxizpv4cvsdhae/lib -static-libstdc++ -static-libgcc --with-build-config=spack]])

help([[The GNU Compiler Collection includes front ends for C, C++, Objective-C,
Fortran, Ada, and Go, as well as libraries for these languages.]])

-- Services provided by the package
family("compiler")

-- Loading this module unlocks the path below unconditionally
prepend_path("MODULEPATH", "/share/apps/spack/modulefiles/gcc/5.5.0")



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/gcc-5.5.0-qd3ezwpsl3jooc5tzxzti4xigoor7b2l/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/gcc-5.5.0-qd3ezwpsl3jooc5tzxzti4xigoor7b2l/./share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/gcc-5.5.0-qd3ezwpsl3jooc5tzxzti4xigoor7b2l/./", ":")
setenv("CC", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/gcc-5.5.0-qd3ezwpsl3jooc5tzxzti4xigoor7b2l/bin/gcc")
setenv("CXX", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/gcc-5.5.0-qd3ezwpsl3jooc5tzxzti4xigoor7b2l/bin/g++")
setenv("FC", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/gcc-5.5.0-qd3ezwpsl3jooc5tzxzti4xigoor7b2l/bin/gfortran")
setenv("F77", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/gcc-5.5.0-qd3ezwpsl3jooc5tzxzti4xigoor7b2l/bin/gfortran")
setenv("GCC_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/gcc-5.5.0-qd3ezwpsl3jooc5tzxzti4xigoor7b2l")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
