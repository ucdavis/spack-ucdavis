-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:47.190162
--
-- megahit@1.1.4%gcc@4.9.4 build_system=makefile arch=linux-ubuntu22.04-x86_64/meullah
--

whatis([[Name : megahit]])
whatis([[Version : 1.1.4]])
whatis([[Target : x86_64]])
whatis([[Short description : MEGAHIT: An ultra-fast single-node solution for large and complex metagenomics assembly via succinct de Bruijn graph]])

help([[MEGAHIT: An ultra-fast single-node solution for large and complex
metagenomics assembly via succinct de Bruijn graph]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-4.9.4/megahit-1.1.4-meullahdk5zjggrxjvbuiuuantnbbxue/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-4.9.4/megahit-1.1.4-meullahdk5zjggrxjvbuiuuantnbbxue/./", ":")
setenv("MEGAHIT_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-4.9.4/megahit-1.1.4-meullahdk5zjggrxjvbuiuuantnbbxue")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
