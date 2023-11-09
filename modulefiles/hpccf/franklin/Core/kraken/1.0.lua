-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:24.485581
--
-- kraken@1.0%gcc@9.5.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/ydbst27
--

whatis([[Name : kraken]])
whatis([[Version : 1.0]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Kraken is a system for assigning taxonomic labels to short DNA sequences, usually obtained through metagenomic studies.]])

help([[Kraken is a system for assigning taxonomic labels to short DNA
sequences, usually obtained through metagenomic studies.]])


depends_on("jellyfish/1.1.11")

prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/kraken-1.0-ydbst27zfutlasjvjjk3n6i2srzinrla/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/kraken-1.0-ydbst27zfutlasjvjjk3n6i2srzinrla/./", ":")
setenv("KRAKEN_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/kraken-1.0-ydbst27zfutlasjvjjk3n6i2srzinrla")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
