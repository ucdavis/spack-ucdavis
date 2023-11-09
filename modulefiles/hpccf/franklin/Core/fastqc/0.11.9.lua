-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:19.414614
--
-- fastqc@0.11.9%gcc@9.5.0 build_system=generic patches=b237b24 arch=linux-ubuntu22.04-x86_64_v3/hmknv2x
--

whatis([[Name : fastqc]])
whatis([[Version : 0.11.9]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : A quality control tool for high throughput sequence data.]])

help([[A quality control tool for high throughput sequence data.]])



prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/fastqc-0.11.9-hmknv2xijxvbh4brwn6smowzq6ykbsxr/lib", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/fastqc-0.11.9-hmknv2xijxvbh4brwn6smowzq6ykbsxr/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/fastqc-0.11.9-hmknv2xijxvbh4brwn6smowzq6ykbsxr/./", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/openjdk-11.0.17_8-xzc4mwzfa4z754pzols4d4antxurg2c7/bin", ":")
setenv("FASTQC_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/fastqc-0.11.9-hmknv2xijxvbh4brwn6smowzq6ykbsxr")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
