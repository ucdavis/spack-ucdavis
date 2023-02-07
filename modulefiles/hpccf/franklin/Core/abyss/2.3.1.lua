-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:41.989830
--
-- abyss@2.3.1%gcc@9.5.0 build_system=autotools maxk=128 arch=linux-ubuntu22.04-x86_64_v3/jtuw2uo
--

whatis([[Name : abyss]])
whatis([[Version : 2.3.1]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : ABySS is a de novo, parallel, paired-end sequence assembler that is designed for short reads. The single-processor version is useful for assembling genomes up to 100 Mbases in size.]])
whatis([[Configure options : --with-boost=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/boost-1.80.0-iwxzl7bg2quzksjiw4m5xn3ozskuezay --with-sqlite=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/sqlite-3.39.4-ygzm5kksmdcdncltfiyqetjmx3xxiqg6 --with-mpi=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/openmpi-4.1.4-2pkqrtzpt7ltccsggul2z56zwssio7vb --enable-maxk=128]])

help([[ABySS is a de novo, parallel, paired-end sequence assembler that is
designed for short reads. The single-processor version is useful for
assembling genomes up to 100 Mbases in size.]])


depends_on("bwa/0.7.17")

prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/abyss-2.3.1-jtuw2uops3kg4ooi6dxcirxqjnatfgzw/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/abyss-2.3.1-jtuw2uops3kg4ooi6dxcirxqjnatfgzw/./share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/abyss-2.3.1-jtuw2uops3kg4ooi6dxcirxqjnatfgzw/./", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/libx11-1.7.0-hbjdyk7tsewaqj7p6zkuaktdslrrl2lq/share/X11/locale", ":")
setenv("ABYSS_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/abyss-2.3.1-jtuw2uops3kg4ooi6dxcirxqjnatfgzw")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
