-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:47.158746
--
-- mcl@14-137%gcc@9.5.0~blast build_system=autotools arch=linux-ubuntu22.04-x86_64_v3/6tqe64w
--

whatis([[Name : mcl]])
whatis([[Version : 14-137]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : The MCL algorithm is short for the Markov Cluster Algorithm, a fast and scalable unsupervised cluster algorithm for graphs (also known as networks) based on simulation of (stochastic) flow in graphs.]])

help([[The MCL algorithm is short for the Markov Cluster Algorithm, a fast and
scalable unsupervised cluster algorithm for graphs (also known as
networks) based on simulation of (stochastic) flow in graphs.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mcl-14-137-6tqe64wsbfotelq6inmvajuxmmcm4yt3/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mcl-14-137-6tqe64wsbfotelq6inmvajuxmmcm4yt3/./share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mcl-14-137-6tqe64wsbfotelq6inmvajuxmmcm4yt3/./", ":")
setenv("MCL_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mcl-14-137-6tqe64wsbfotelq6inmvajuxmmcm4yt3")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
