-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-25 13:33:51.548424
--
-- ctffind@4.1.14%gcc@11.3.0+openmp build_system=autotools patches=d2d349c arch=linux-ubuntu22.04-zen2/pgoescf
--

whatis([[Name : ctffind]])
whatis([[Version : 4.1.14]])
whatis([[Target : zen2]])
whatis([[Short description : Fast and accurate defocus estimation from electron micrographs.]])
whatis([[Configure options : --disable-debugmode --disable-mkl CPPFLAGS=-I/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/amdfftw-3.2-aabjytlv2llwgzegk5f45yxqoi5fpnjb/include LDFLAGS=-L/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/amdfftw-3.2-aabjytlv2llwgzegk5f45yxqoi5fpnjb/lib -lfftw3 --enable-openmp]])

help([[Fast and accurate defocus estimation from electron micrographs.]])


depends_on("amdfftw/3.2+amd")

prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/ctffind-4.1.14-pgoescfxzwzuzdv2fxwrdqrq2yvofufq/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/ctffind-4.1.14-pgoescfxzwzuzdv2fxwrdqrq2yvofufq/./", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/libx11-1.7.0-37huyicewgwa4it26lyc7hrklw2g6q6o/share/X11/locale", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gobject-introspection-1.72.0-nuughpbhubfucho3khmlqeuqafr3egqr/share", ":")
prepend_path("GI_TYPELIB_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gobject-introspection-1.72.0-nuughpbhubfucho3khmlqeuqafr3egqr/lib/girepository-1.0", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/atk-2.36.0-4lb2c45jallxu4dz4sk3igk2b4a3dha7/share", ":")
prepend_path("GI_TYPELIB_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/atk-2.36.0-4lb2c45jallxu4dz4sk3igk2b4a3dha7/lib/girepository-1.0", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/shared-mime-info-1.9-r7svlvsqtjm653bt24omr2yob56zanqi/share", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gdk-pixbuf-2.42.2-g7rsxjgws4oigp65bdyl53gnbgror7bb/share", ":")
prepend_path("GI_TYPELIB_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gdk-pixbuf-2.42.2-g7rsxjgws4oigp65bdyl53gnbgror7bb/lib/girepository-1.0", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/harfbuzz-5.1.0-b7kmkkp3wdnhilrjpwpzgstgaeuqzvbl/share", ":")
prepend_path("GI_TYPELIB_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/harfbuzz-5.1.0-b7kmkkp3wdnhilrjpwpzgstgaeuqzvbl/lib/girepository-1.0", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/pango-1.50.7-o4cw42bgzpgxb6po773m47fglqvrnwog/share", ":")
prepend_path("GI_TYPELIB_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/pango-1.50.7-o4cw42bgzpgxb6po773m47fglqvrnwog/lib/girepository-1.0", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/librsvg-2.51.0-ujnb3s6led7g2cst64xrkm6zfcmdtuft/share", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gtkplus-2.24.32-ae4d4jo2kknxxlg7lfpa457ugneocfgh/share", ":")
prepend_path("GI_TYPELIB_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gtkplus-2.24.32-ae4d4jo2kknxxlg7lfpa457ugneocfgh/lib/girepository-1.0", ":")
setenv("CTFFIND_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/ctffind-4.1.14-pgoescfxzwzuzdv2fxwrdqrq2yvofufq")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
