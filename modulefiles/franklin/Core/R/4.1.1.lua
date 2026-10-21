-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-02-16 09:24:13.672142
--
-- r@4.1.1%gcc@11.3.0+X~external-lapack~memory_profiling~rmath build_system=autotools arch=linux-ubuntu22.04-x86_64_v3/p7qspfx
--

whatis([[Name : r]])
whatis([[Version : 4.1.1]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : R is 'GNU S', a freely available language and environment for statistical computing and graphics which provides a wide variety of statistical and graphical techniques: linear and nonlinear modelling, statistical tests, time series analysis, classification, clustering, etc. Please consult the R project homepage for further information.]])
whatis([[Configure options : --libdir=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/r-4.1.1-p7qspfxifzoidtrlsuaomdmgocxp2w6d/rlib --enable-R-shlib --enable-BLAS-shlib --enable-R-framework=no --without-recommended-packages LDFLAGS=-L/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/r-4.1.1-p7qspfxifzoidtrlsuaomdmgocxp2w6d/rlib/R/lib -Wl,-rpath,/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/r-4.1.1-p7qspfxifzoidtrlsuaomdmgocxp2w6d/rlib/R/lib --with-cairo --with-jpeglib --with-libpng --with-libtiff --with-tcltk --with-x --with-tcl-config=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/tcl-8.6.12-7zpup35x65zxbwou6az55hlzrasos5yo/lib/tclConfig.sh --with-tk-config=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/tk-8.6.11-ehxr2hmtkheeyy7fozaw6lfg6k75zbgh/lib/tkConfig.sh]])

help([[R is 'GNU S', a freely available language and environment for
statistical computing and graphics which provides a wide variety of
statistical and graphical techniques: linear and nonlinear modelling,
statistical tests, time series analysis, classification, clustering,
etc. Please consult the R project homepage for further information.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/r-4.1.1-p7qspfxifzoidtrlsuaomdmgocxp2w6d/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/r-4.1.1-p7qspfxifzoidtrlsuaomdmgocxp2w6d/./share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/r-4.1.1-p7qspfxifzoidtrlsuaomdmgocxp2w6d/./", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/libx11-1.7.0-37huyicewgwa4it26lyc7hrklw2g6q6o/share/X11/locale", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gobject-introspection-1.72.0-xmhiqm4u6ecfominje735hgfgarurybh/share", ":")
prepend_path("GI_TYPELIB_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gobject-introspection-1.72.0-xmhiqm4u6ecfominje735hgfgarurybh/lib/girepository-1.0", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/harfbuzz-5.1.0-bzj5o57ish64nv2izrmewyz4ial3beb6/share", ":")
prepend_path("GI_TYPELIB_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/harfbuzz-5.1.0-bzj5o57ish64nv2izrmewyz4ial3beb6/lib/girepository-1.0", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/pango-1.50.7-uzgy4qrn6baswz5aqvieuyrojqmqw6x7/share", ":")
prepend_path("GI_TYPELIB_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/pango-1.50.7-uzgy4qrn6baswz5aqvieuyrojqmqw6x7/lib/girepository-1.0", ":")
prepend_path("TCLLIBPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/tk-8.6.11-ehxr2hmtkheeyy7fozaw6lfg6k75zbgh/lib", " ")
prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/r-4.1.1-p7qspfxifzoidtrlsuaomdmgocxp2w6d/rlib/R/lib", ":")
prepend_path("PKG_CONFIG_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/r-4.1.1-p7qspfxifzoidtrlsuaomdmgocxp2w6d/rlib/pkgconfig", ":")
setenv("R_HOME", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/r-4.1.1-p7qspfxifzoidtrlsuaomdmgocxp2w6d/rlib/R")
setenv("R_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/r-4.1.1-p7qspfxifzoidtrlsuaomdmgocxp2w6d")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end


setenv("R_VIEW_HOME", "/share/apps/spack/environments/r-stack/views/4.1.1")
setenv("R_HOME", pathJoin(os.getenv("R_VIEW_HOME"), "rlib/R/"))
setenv("R_ROOT", pathJoin(os.getenv("R_VIEW_HOME")))

prepend_path("PATH", pathJoin(os.getenv("R_VIEW_HOME"), "bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(os.getenv("R_VIEW_HOME"), "rlib/R/lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(os.getenv("R_VIEW_HOME"), "rlib/pkgconfig"))
prepend_path("CMAKE_PREFIX_PATH", os.getenv("R_VIEW_HOME"))

prepend_path("R_LIBS", pathJoin(os.getenv("R_VIEW_HOME"), "rlib/R/library"))
prepend_path("R_LIBS", "/share/apps/spack/Rlibs/4.1.1")

