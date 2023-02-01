-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-18 10:54:05.864620
--
-- kallisto@0.48.0%gcc@9.5.0~hdf5~ipo build_system=cmake build_type=RelWithDebInfo arch=linux-ubuntu22.04-x86_64_v3/p7hvhfi
--

whatis([[Name : kallisto]])
whatis([[Version : 0.48.0]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : kallisto is a program for quantifying abundances of transcripts from RNA-Seq data.]])

help([[kallisto is a program for quantifying abundances of transcripts from
RNA-Seq data.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/kallisto-0.48.0-p7hvhfityicqqzirj2isyca6lln6rtnm/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/kallisto-0.48.0-p7hvhfityicqqzirj2isyca6lln6rtnm/./", ":")
setenv("KALLISTO_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/kallisto-0.48.0-p7hvhfityicqqzirj2isyca6lln6rtnm")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
