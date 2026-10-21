-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-18 10:54:09.475224
--
-- scallop@0.10.5%gcc@9.5.0 build_system=autotools arch=linux-ubuntu22.04-x86_64_v3/mcbfyu5
--

whatis([[Name : scallop]])
whatis([[Version : 0.10.5]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Scallop is a reference-based transcriptome assembler for RNA-seq]])
whatis([[Configure options : --with-clp=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/clp-1.17.6-tbfn74yb5prkqfopxrbnoe3oe2kl5y2w --with-htslib=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/htslib-1.14-4d2azjp3thgr5gvntdsmwnfaqgpuh2ul --with-boost=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/boost-1.80.0-iwxzl7bg2quzksjiw4m5xn3ozskuezay]])

help([[Scallop is a reference-based transcriptome assembler for RNA-seq]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/scallop-0.10.5-mcbfyu5ddrjlvclx4fulvzsson3yuxbw/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/scallop-0.10.5-mcbfyu5ddrjlvclx4fulvzsson3yuxbw/./", ":")
setenv("SCALLOP_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/scallop-0.10.5-mcbfyu5ddrjlvclx4fulvzsson3yuxbw")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
