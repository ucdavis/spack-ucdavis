-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:20.063396
--
-- hmmer@3.3.2%gcc@9.5.0~gsl+mpi build_system=generic arch=linux-ubuntu22.04-x86_64_v3/htslr6r
--

whatis([[Name : hmmer]])
whatis([[Version : 3.3.2]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : HMMER is used for searching sequence databases for sequence homologs, and for making sequence alignments. It implements methods using probabilistic models called profile hidden Markov models (profile HMMs). ]])

help([[HMMER is used for searching sequence databases for sequence homologs,
and for making sequence alignments. It implements methods using
probabilistic models called profile hidden Markov models (profile HMMs).]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/hmmer-3.3.2-htslr6r2wds6aljvmamktcviyyucajx2/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/hmmer-3.3.2-htslr6r2wds6aljvmamktcviyyucajx2/./share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/hmmer-3.3.2-htslr6r2wds6aljvmamktcviyyucajx2/./", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/libx11-1.7.0-hbjdyk7tsewaqj7p6zkuaktdslrrl2lq/share/X11/locale", ":")
setenv("HMMER_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/hmmer-3.3.2-htslr6r2wds6aljvmamktcviyyucajx2")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
