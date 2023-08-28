-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:31.084831
--
-- satsuma2@2021-03-04%gcc@9.5.0~ipo build_system=cmake build_type=RelWithDebInfo arch=linux-ubuntu22.04-x86_64_v3/ewfu6i4
--

whatis([[Name : satsuma2]])
whatis([[Version : 2021-03-04]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Satsuma2 is an optimsed version of Satsuma, a tool to reliably align large and complex DNA sequences providing maximum sensitivity (to find all there is to find), specificity (to only find real homology) and speed (to accomodate the billions of base pairs in vertebrate genomes). ]])

help([[Satsuma2 is an optimsed version of Satsuma, a tool to reliably align
large and complex DNA sequences providing maximum sensitivity (to find
all there is to find), specificity (to only find real homology) and
speed (to accomodate the billions of base pairs in vertebrate genomes).]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/satsuma2-2021-03-04-ewfu6i4emebkb4nxhg4nyr2v3f4y3cee/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/satsuma2-2021-03-04-ewfu6i4emebkb4nxhg4nyr2v3f4y3cee/./", ":")
setenv("SATSUMA2_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/satsuma2-2021-03-04-ewfu6i4emebkb4nxhg4nyr2v3f4y3cee")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
