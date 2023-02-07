-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-18 10:54:03.140311
--
-- gatk@4.2.6.1%gcc@9.5.0~r build_system=generic arch=linux-ubuntu22.04-x86_64_v3/jesscnl
--

whatis([[Name : gatk]])
whatis([[Version : 4.2.6.1]])
whatis([[Target : x86_64_v3]])
whatis([[Short description :  Genome Analysis Toolkit Variant Discovery in High-Throughput Sequencing Data ]])

help([[ Genome Analysis Toolkit Variant Discovery in High-Throughput Sequencing
Data]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/gatk-4.2.6.1-jesscnlxwffkxty4t62a33pj57lfz7x5/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/gatk-4.2.6.1-jesscnlxwffkxty4t62a33pj57lfz7x5/./", ":")
prepend_path("GATK", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/gatk-4.2.6.1-jesscnlxwffkxty4t62a33pj57lfz7x5/bin/GenomeAnalysisTK.jar", ":")
setenv("GATK_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/gatk-4.2.6.1-jesscnlxwffkxty4t62a33pj57lfz7x5")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
