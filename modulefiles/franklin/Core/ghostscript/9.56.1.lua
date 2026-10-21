-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-05-30 13:50:15.402669
--
-- ghostscript@9.56.1%gcc@11.3.0~tesseract build_system=autotools arch=linux-ubuntu22.04-x86_64_v3/d6b2z5s
--

whatis([[Name : ghostscript]])
whatis([[Version : 9.56.1]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : An interpreter for the PostScript language and for PDF.]])
whatis([[Configure options : --disable-compile-inits --enable-dynamic --with-system-libtiff --without-tesseract]])

help([[An interpreter for the PostScript language and for PDF.]])



prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/ghostscript-9.56.1-d6b2z5s3woxkh3pv57snj3iq7gukibrc/lib", ":")
prepend_path("CPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/ghostscript-9.56.1-d6b2z5s3woxkh3pv57snj3iq7gukibrc/include", ":")
prepend_path("C_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/ghostscript-9.56.1-d6b2z5s3woxkh3pv57snj3iq7gukibrc/include", ":")
prepend_path("CPLUS_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/ghostscript-9.56.1-d6b2z5s3woxkh3pv57snj3iq7gukibrc/include", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/ghostscript-9.56.1-d6b2z5s3woxkh3pv57snj3iq7gukibrc/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/ghostscript-9.56.1-d6b2z5s3woxkh3pv57snj3iq7gukibrc/./share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/ghostscript-9.56.1-d6b2z5s3woxkh3pv57snj3iq7gukibrc/./", ":")
prepend_path("XDG_DATA_DIRS", "/usr/share", ":")
prepend_path("GI_TYPELIB_PATH", "/usr/lib/girepository-1.0", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/libx11-1.7.0-37huyicewgwa4it26lyc7hrklw2g6q6o/share/X11/locale", ":")
setenv("GHOSTSCRIPT_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/ghostscript-9.56.1-d6b2z5s3woxkh3pv57snj3iq7gukibrc")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
