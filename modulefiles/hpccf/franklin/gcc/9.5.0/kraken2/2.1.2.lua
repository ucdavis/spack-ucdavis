-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-18 10:54:06.073511
--
-- kraken2@2.1.2%gcc@9.5.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/abdvkha
--

whatis([[Name : kraken2]])
whatis([[Version : 2.1.2]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Kraken2 is a system for assigning taxonomic labels to short DNA sequences, usually obtained through metagenomic studies.]])

help([[Kraken2 is a system for assigning taxonomic labels to short DNA
sequences, usually obtained through metagenomic studies.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/kraken2-2.1.2-abdvkhay74bb2s5ooxcnaf5rvxn6uimy/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/kraken2-2.1.2-abdvkhay74bb2s5ooxcnaf5rvxn6uimy/./", ":")
setenv("KRAKEN2_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/kraken2-2.1.2-abdvkhay74bb2s5ooxcnaf5rvxn6uimy")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
