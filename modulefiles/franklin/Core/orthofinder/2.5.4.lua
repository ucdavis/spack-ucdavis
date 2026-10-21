-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:27.360886
--
-- orthofinder@2.5.4%gcc@9.5.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/7uticww
--

whatis([[Name : orthofinder]])
whatis([[Version : 2.5.4]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : OrthoFinder is a fast, accurate and comprehensive analysis tool for comparative genomics.]])

help([[OrthoFinder is a fast, accurate and comprehensive analysis tool for
comparative genomics. It finds orthologues and orthogroups infers rooted
gene trees for all orthogroups and infers a rooted species tree for the
species being analysed. OrthoFinder also provides comprehensive
statistics for comparative genomic analyses. OrthoFinder is simple to
use and all you need to run it is a set of protein sequence files (one
per species) in FASTA format.]])


depends_on("blast-plus/2.12.0")
depends_on("mcl/14-137")

prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/orthofinder-2.5.4-7uticwwp7vpbjv4fbfwl6fetjz6w27tl/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/orthofinder-2.5.4-7uticwwp7vpbjv4fbfwl6fetjz6w27tl/./", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/py-numpy-1.23.4-mt23epmzykv25huffxjmwk25kdqsrsdl/lib/python3.9/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/py-setuptools-59.4.0-ip3wvqgn3ziq6rryvl4uedzbyzzdhcqk/lib/python3.9/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/py-scipy-1.8.1-swbdzgvc7a246gtfkon4eqwrokfydewj/lib/python3.9/site-packages", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/orthofinder-2.5.4-7uticwwp7vpbjv4fbfwl6fetjz6w27tl/bin", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/orthofinder-2.5.4-7uticwwp7vpbjv4fbfwl6fetjz6w27tl/bin/tools", ":")
setenv("ORTHOFINDER_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/orthofinder-2.5.4-7uticwwp7vpbjv4fbfwl6fetjz6w27tl")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
