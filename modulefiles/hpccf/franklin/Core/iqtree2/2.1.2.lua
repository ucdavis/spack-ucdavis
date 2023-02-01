-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:46.636402
--
-- iqtree2@2.1.2%gcc@9.5.0~ipo build_system=cmake build_type=RelWithDebInfo arch=linux-ubuntu22.04-x86_64_v3/5hsvlxv
--

whatis([[Name : iqtree2]])
whatis([[Version : 2.1.2]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Efficient and versatile phylogenomic software by maximum likelihood]])

help([[Efficient and versatile phylogenomic software by maximum likelihood]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/iqtree2-2.1.2-5hsvlxv4356grrwd6tam22ly2osmbcoy/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/iqtree2-2.1.2-5hsvlxv4356grrwd6tam22ly2osmbcoy/./", ":")
setenv("IQTREE2_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/iqtree2-2.1.2-5hsvlxv4356grrwd6tam22ly2osmbcoy")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
