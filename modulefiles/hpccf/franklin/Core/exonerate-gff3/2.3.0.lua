-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:43.792918
--
-- exonerate-gff3@2.3.0%gcc@9.5.0 build_system=autotools arch=linux-ubuntu22.04-x86_64_v3/mmb7doh
--

whatis([[Name : exonerate-gff3]])
whatis([[Version : 2.3.0]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : This is an exonerate fork with added gff3 support. Original website with user guides: http://www.ebi.ac.uk/~guy/exonerate/]])

help([[This is an exonerate fork with added gff3 support. Original website with
user guides: http://www.ebi.ac.uk/~guy/exonerate/]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/exonerate-gff3-2.3.0-mmb7dohutp3xxzk6vb67cxdwn424yq4g/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/exonerate-gff3-2.3.0-mmb7dohutp3xxzk6vb67cxdwn424yq4g/./share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/exonerate-gff3-2.3.0-mmb7dohutp3xxzk6vb67cxdwn424yq4g/./", ":")
setenv("EXONERATE_GFF3_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/exonerate-gff3-2.3.0-mmb7dohutp3xxzk6vb67cxdwn424yq4g")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
