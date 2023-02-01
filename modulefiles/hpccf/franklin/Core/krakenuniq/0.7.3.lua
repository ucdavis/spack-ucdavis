-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:47.008764
--
-- krakenuniq@0.7.3%gcc@9.5.0~jellyfish build_system=generic arch=linux-ubuntu22.04-x86_64_v3/44cfkls
--

whatis([[Name : krakenuniq]])
whatis([[Version : 0.7.3]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Metagenomics classifier with unique k-mer counting for more specific results.]])

help([[Metagenomics classifier with unique k-mer counting for more specific
results.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/krakenuniq-0.7.3-44cfklsb3ky5pxaegb5hrnldkowaa667/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/krakenuniq-0.7.3-44cfklsb3ky5pxaegb5hrnldkowaa667/./", ":")
setenv("KRAKENUNIQ_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/krakenuniq-0.7.3-44cfklsb3ky5pxaegb5hrnldkowaa667")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
