-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:18.714600
--
-- clustalw@2.1%gcc@11.3.0 build_system=autotools arch=linux-ubuntu22.04-x86_64_v3/nekyn7q
--

whatis([[Name : clustalw]])
whatis([[Version : 2.1]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Multiple alignment of nucleic acid and protein sequences.]])

help([[Multiple alignment of nucleic acid and protein sequences.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/clustalw-2.1-nekyn7qkv7p44ceey2yxixy4kv5fb7u6/./bin", ":")
prepend_path("ACLOCAL_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/clustalw-2.1-nekyn7qkv7p44ceey2yxixy4kv5fb7u6/./share/aclocal", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/clustalw-2.1-nekyn7qkv7p44ceey2yxixy4kv5fb7u6/./", ":")
setenv("CLUSTALW_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/clustalw-2.1-nekyn7qkv7p44ceey2yxixy4kv5fb7u6")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
