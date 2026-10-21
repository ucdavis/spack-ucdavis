-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-18 10:54:01.676216
--
-- bedtools2@2.30.0%gcc@9.5.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/lkg6vmx
--

whatis([[Name : bedtools2]])
whatis([[Version : 2.30.0]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Collectively, the bedtools utilities are a swiss-army knife of tools for a wide-range of genomics analysis tasks. The most widely-used tools enable genome arithmetic: that is, set theory on the genome.]])

help([[Collectively, the bedtools utilities are a swiss-army knife of tools for
a wide-range of genomics analysis tasks. The most widely-used tools
enable genome arithmetic: that is, set theory on the genome.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/bedtools2-2.30.0-lkg6vmxwejp6xauueepxenxxwlwrxttx/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/bedtools2-2.30.0-lkg6vmxwejp6xauueepxenxxwlwrxttx/./", ":")
setenv("BEDTOOLS2_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/bedtools2-2.30.0-lkg6vmxwejp6xauueepxenxxwlwrxttx")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
