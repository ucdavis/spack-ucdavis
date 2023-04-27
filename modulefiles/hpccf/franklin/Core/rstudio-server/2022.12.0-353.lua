-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-03-17 11:41:09.346122
--
-- rstudio@2022.12.0-353%gcc@11.3.0~ipo~notebook+server build_system=cmake build_type=RelWithDebInfo patches=0bea752 arch=linux-ubuntu22.04-x86_64_v3/iyxyinp
--

whatis([[Name : rstudio]])
whatis([[Version : 2022.12.0-353]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : RStudio is an integrated development environment (IDE) for R.]])
whatis([[Configure options : -DRSTUDIO_PACKAGE_BUILD=Yes -DRSTUDIO_USE_SYSTEM_YAML_CPP=Yes -DRSTUDIO_USE_SYSTEM_BOOST=Yes -DRSTUDIO_USE_SYSTEM_SOCI=Yes -DQUARTO_ENABLED=No -DQT_QMAKE_EXECUTABLE="/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/qt-5.15.8-rwoutxia3e3yz7szjit6t44ly5gaxrrs/bin/qmake" -DRSTUDIO_TARGET=Server]])

help([[RStudio is an integrated development environment (IDE) for R.]])


depends_on("r/4.2.0")

prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/rstudio-2022.12.0-353-iyxyinpo3lt4tk3lkzofeugje2a6phq5/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/rstudio-2022.12.0-353-iyxyinpo3lt4tk3lkzofeugje2a6phq5/./", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/libx11-1.7.0-37huyicewgwa4it26lyc7hrklw2g6q6o/share/X11/locale", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gobject-introspection-1.72.0-7yjz3yq2gcd76bnizoww7zjlbtbrnicz/share", ":")
prepend_path("GI_TYPELIB_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gobject-introspection-1.72.0-7yjz3yq2gcd76bnizoww7zjlbtbrnicz/lib/girepository-1.0", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/harfbuzz-5.1.0-wr3nws6q4hbaxabnobt3q5m7fn2o6y7x/share", ":")
prepend_path("GI_TYPELIB_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/harfbuzz-5.1.0-wr3nws6q4hbaxabnobt3q5m7fn2o6y7x/lib/girepository-1.0", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/pango-1.50.7-ess4itvf67rvkdb2mkagpwoxoryqbkzs/share", ":")
prepend_path("GI_TYPELIB_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/pango-1.50.7-ess4itvf67rvkdb2mkagpwoxoryqbkzs/lib/girepository-1.0", ":")
prepend_path("TCLLIBPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/tk-8.6.11-edfso5fkjjibajfhgow2np54fkqzffli/lib", " ")
setenv("R_HOME", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/r-4.2.0-eh7pas7p43gqo3k333vrqqsgsiovcfzp/rlib/R")
setenv("RSTUDIO_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/rstudio-2022.12.0-353-iyxyinpo3lt4tk3lkzofeugje2a6phq5")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end


setenv("RSTUDIO_SERVER_UTILS", "/share/apps/franklin/rstudio-server/2022.12.0-353")
prepend_path("PATH", os.getenv("RSTUDIO_SERVER_UTILS"))

if (mode() == "load") then

   local host = capture([[/bin/hostname]]):gsub("\n", "")
   if (host == "franklin") then
      LmodError([[
   RStudio Server is not allowed on the head node; it must be run in 
   an interactive Slurm session. For example, you could run:

      srun -p low --time=9:00:00 --cpus-per-task=4 --mem=5G --pty /bin/bash -l

   Once your session launches, reload this module again and follow
   the provided directions to launch the server.
      ]])
   end

   LmodMessage([[
   If you wish to use RStudio Server with the system R, first load it with:

      module load R

   If you instead wish to load R from a conda environment (one that has r-base installed),
   activate the environment before proceeding.

   Once your R is sorted, launch this server with:

      rstudio-server
   ]])
end

