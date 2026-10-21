-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:23.694904
--
-- infernal@1.1.4%gcc@11.3.0~mpi build_system=autotools arch=linux-ubuntu22.04-x86_64_v3/5lypqqh
--

whatis([[Name : infernal]])
whatis([[Version : 1.1.4]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Infernal (INFERence of RNA ALignment) is for searching DNA sequence databases for RNA structure and sequence similarities. It is an implementation of a special case of profile stochastic context-free grammars called covariance models (CMs).]])
whatis([[Configure options : --disable-mpi]])

help([[Infernal (INFERence of RNA ALignment) is for searching DNA sequence
databases for RNA structure and sequence similarities. It is an
implementation of a special case of profile stochastic context-free
grammars called covariance models (CMs).]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/infernal-1.1.4-5lypqqhbewno2nhhykmra4zt2ivakx2i/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/infernal-1.1.4-5lypqqhbewno2nhhykmra4zt2ivakx2i/./share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/infernal-1.1.4-5lypqqhbewno2nhhykmra4zt2ivakx2i/./", ":")
setenv("INFERNAL_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/infernal-1.1.4-5lypqqhbewno2nhhykmra4zt2ivakx2i")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
