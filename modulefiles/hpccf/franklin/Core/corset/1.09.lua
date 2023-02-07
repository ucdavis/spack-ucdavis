-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:43.532865
--
-- corset@1.09%gcc@11.3.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/jgyi443
--

whatis([[Name : corset]])
whatis([[Version : 1.09]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Corset is a command-line software program to go from a de novo transcriptome assembly to gene-level counts.]])

help([[Corset is a command-line software program to go from a de novo
transcriptome assembly to gene-level counts.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/corset-1.09-jgyi44342i5mcmlhpfb3getu4i5t3jbp/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/corset-1.09-jgyi44342i5mcmlhpfb3getu4i5t3jbp/./", ":")
setenv("CORSET_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/corset-1.09-jgyi44342i5mcmlhpfb3getu4i5t3jbp")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
