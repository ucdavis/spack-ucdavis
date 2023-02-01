-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-18 10:54:01.864557
--
-- blast2go@5.2.5%gcc@9.5.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/7fs7rz3
--

whatis([[Name : blast2go]])
whatis([[Version : 5.2.5]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Blast2GO is a bioinformatics platform for high-quality functional annotation and analysis of genomic datasets.]])

help([[Blast2GO is a bioinformatics platform for high-quality functional
annotation and analysis of genomic datasets.]])


depends_on("blast-plus/2.12.0")

prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/blast2go-5.2.5-7fs7rz3sg7bw2mmoanw44yynggjvh7pq/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/blast2go-5.2.5-7fs7rz3sg7bw2mmoanw44yynggjvh7pq/./", ":")
setenv("BLAST2GO_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/blast2go-5.2.5-7fs7rz3sg7bw2mmoanw44yynggjvh7pq")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
