-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:27.783482
--
-- orthomcl@2.0.9%gcc@9.5.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/rqipkbh
--

whatis([[Name : orthomcl]])
whatis([[Version : 2.0.9]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : OrthoMCL is a genome-scale algorithm for grouping orthologous protein sequences.]])

help([[OrthoMCL is a genome-scale algorithm for grouping orthologous protein
sequences.]])


depends_on("blast-plus/2.12.0")
depends_on("mcl/14-137")

prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/orthomcl-2.0.9-rqipkbhgp5rjjhdvjiieiznmagvryii4/lib", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/orthomcl-2.0.9-rqipkbhgp5rjjhdvjiieiznmagvryii4/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/orthomcl-2.0.9-rqipkbhgp5rjjhdvjiieiznmagvryii4/./", ":")
prepend_path("PERL5LIB", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/orthomcl-2.0.9-rqipkbhgp5rjjhdvjiieiznmagvryii4/lib", ":")
setenv("ORTHOMCL_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/orthomcl-2.0.9-rqipkbhgp5rjjhdvjiieiznmagvryii4")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
