-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 14:39:20.511346
--
-- gcc@7.5.0%gcc@11.3.0~binutils+bootstrap~graphite~nvptx~piclibs~profiled~strip build_system=autotools build_type=RelWithDebInfo languages=c,c++,fortran patches=98a9c96,b620e92,dc1ca24 arch=linux-ubuntu22.04-x86_64_v3/xllshg4
--

whatis([[Name : gcc]])
whatis([[Version : 7.5.0]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : The GNU Compiler Collection includes front ends for C, C++, Objective-C, Fortran, Ada, and Go, as well as libraries for these languages.]])
whatis([[Configure options : --with-pkgversion=Spack GCC --with-bugurl=https://github.com/spack/spack/issues --disable-multilib --enable-languages=c,c++,fortran --disable-nls --disable-canonical-system-headers --with-system-zlib --enable-bootstrap --with-mpfr-include=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/mpfr-3.1.6-cy3ptblg2yovsl7jlryrmgvffrwrpmhj/include --with-mpfr-lib=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/mpfr-3.1.6-cy3ptblg2yovsl7jlryrmgvffrwrpmhj/lib --with-gmp-include=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gmp-6.2.1-nqpdjp3jncye425b7lnanf5xqzzu6eeo/include --with-gmp-lib=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gmp-6.2.1-nqpdjp3jncye425b7lnanf5xqzzu6eeo/lib --with-mpc-include=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/mpc-1.1.0-egl7qxou7g4ufesskxejbyj5dtolsoil/include --with-mpc-lib=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/mpc-1.1.0-egl7qxou7g4ufesskxejbyj5dtolsoil/lib --without-isl --with-stage1-ldflags=-Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gcc-7.5.0-xllshg4qogxno5yfusupkvw6fvsgo4xz/lib -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gcc-7.5.0-xllshg4qogxno5yfusupkvw6fvsgo4xz/lib64 -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gmp-6.2.1-nqpdjp3jncye425b7lnanf5xqzzu6eeo/lib -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/mpc-1.1.0-egl7qxou7g4ufesskxejbyj5dtolsoil/lib -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/mpfr-3.1.6-cy3ptblg2yovsl7jlryrmgvffrwrpmhj/lib -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/zlib-1.2.13-r25gtq3tqq464wdldy252urtjxspz7ln/lib --with-boot-ldflags=-Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gcc-7.5.0-xllshg4qogxno5yfusupkvw6fvsgo4xz/lib -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gcc-7.5.0-xllshg4qogxno5yfusupkvw6fvsgo4xz/lib64 -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gmp-6.2.1-nqpdjp3jncye425b7lnanf5xqzzu6eeo/lib -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/mpc-1.1.0-egl7qxou7g4ufesskxejbyj5dtolsoil/lib -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/mpfr-3.1.6-cy3ptblg2yovsl7jlryrmgvffrwrpmhj/lib -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/zlib-1.2.13-r25gtq3tqq464wdldy252urtjxspz7ln/lib -static-libstdc++ -static-libgcc --with-build-config=spack]])

help([[The GNU Compiler Collection includes front ends for C, C++, Objective-C,
Fortran, Ada, and Go, as well as libraries for these languages.]])

-- Services provided by the package
family("compiler")

-- Loading this module unlocks the path below unconditionally
prepend_path("MODULEPATH", "/share/apps/spack/modulefiles/gcc/7.5.0")



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gcc-7.5.0-xllshg4qogxno5yfusupkvw6fvsgo4xz/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gcc-7.5.0-xllshg4qogxno5yfusupkvw6fvsgo4xz/./share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gcc-7.5.0-xllshg4qogxno5yfusupkvw6fvsgo4xz/./", ":")
setenv("CC", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gcc-7.5.0-xllshg4qogxno5yfusupkvw6fvsgo4xz/bin/gcc")
setenv("CXX", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gcc-7.5.0-xllshg4qogxno5yfusupkvw6fvsgo4xz/bin/g++")
setenv("FC", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gcc-7.5.0-xllshg4qogxno5yfusupkvw6fvsgo4xz/bin/gfortran")
setenv("F77", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gcc-7.5.0-xllshg4qogxno5yfusupkvw6fvsgo4xz/bin/gfortran")
setenv("GCC_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gcc-7.5.0-xllshg4qogxno5yfusupkvw6fvsgo4xz")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
