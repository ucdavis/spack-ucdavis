-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:48.252493
--
-- nextflow@22.10.1%gcc@9.5.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/4inhztw
--

whatis([[Name : nextflow]])
whatis([[Version : 22.10.1]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Data-driven computational pipelines.]])

help([[Data-driven computational pipelines.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/nextflow-22.10.1-4inhztwnuh5j6wc3zqklpvalajjuypyi/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/nextflow-22.10.1-4inhztwnuh5j6wc3zqklpvalajjuypyi/./", ":")
setenv("NEXTFLOW_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/nextflow-22.10.1-4inhztwnuh5j6wc3zqklpvalajjuypyi")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
