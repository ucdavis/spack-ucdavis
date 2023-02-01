-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:48.760346
--
-- plink@1.07%gcc@11.3.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/7xgsqcx
--

whatis([[Name : plink]])
whatis([[Version : 1.07]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : PLINK is a free, open-source whole genome association analysis toolset, designed to perform a range of basic, large-scale analyses in a computationally efficient manner.]])

help([[PLINK is a free, open-source whole genome association analysis toolset,
designed to perform a range of basic, large-scale analyses in a
computationally efficient manner.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/plink-1.07-7xgsqcxt4hkxlu4xt4gvggeymp56xoy7/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/plink-1.07-7xgsqcxt4hkxlu4xt4gvggeymp56xoy7/./", ":")
setenv("PLINK_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/plink-1.07-7xgsqcxt4hkxlu4xt4gvggeymp56xoy7")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
