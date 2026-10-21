-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-18 10:54:06.614521
--
-- metaeuk@6-a5d39d9%gcc@9.5.0~ipo build_system=cmake build_type=RelWithDebInfo arch=linux-ubuntu22.04-x86_64_v3/moljvu7
--

whatis([[Name : metaeuk]])
whatis([[Version : 6-a5d39d9]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : MetaEuk is a modular toolkit designed for large-scale gene discovery and annotation in eukaryotic metagenomic contigs. ]])

help([[MetaEuk is a modular toolkit designed for large-scale gene discovery and
annotation in eukaryotic metagenomic contigs.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/metaeuk-6-a5d39d9-moljvu7dzg2cicv5jc3f3oxa64w5ctvh/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/metaeuk-6-a5d39d9-moljvu7dzg2cicv5jc3f3oxa64w5ctvh/./", ":")
setenv("METAEUK_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/metaeuk-6-a5d39d9-moljvu7dzg2cicv5jc3f3oxa64w5ctvh")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
