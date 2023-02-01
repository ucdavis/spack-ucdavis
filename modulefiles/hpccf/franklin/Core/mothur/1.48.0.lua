-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:47.744055
--
-- mothur@1.48.0%gcc@9.5.0+boost~gsl~hdf5 build_system=makefile arch=linux-ubuntu22.04-x86_64_v3/26o5scd
--

whatis([[Name : mothur]])
whatis([[Version : 1.48.0]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : This project seeks to develop a single piece of open-source, expandable software to fill the bioinformatics needs of the microbial ecology community.]])

help([[This project seeks to develop a single piece of open-source, expandable
software to fill the bioinformatics needs of the microbial ecology
community.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mothur-1.48.0-26o5scdaayejjw6z7monw72loj4ypg36/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mothur-1.48.0-26o5scdaayejjw6z7monw72loj4ypg36/./", ":")
setenv("MOTHUR_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mothur-1.48.0-26o5scdaayejjw6z7monw72loj4ypg36")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
