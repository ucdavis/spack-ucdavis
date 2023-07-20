-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-05-22 12:32:54.416825
--
-- parallel@20220522%gcc@11.3.0 build_system=autotools arch=linux-ubuntu22.04-x86_64_v3/tdt7nq6
--

whatis([[Name : parallel]])
whatis([[Version : 20220522]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : GNU parallel is a shell tool for executing jobs in parallel using one or more computers. A job can be a single command or a small script that has to be run for each of the lines in the input. ]])

help([[GNU parallel is a shell tool for executing jobs in parallel using one or
more computers. A job can be a single command or a small script that has
to be run for each of the lines in the input.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/parallel-20220522-tdt7nq6ffctsyqxdrzsyr2skeky5qen3/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/parallel-20220522-tdt7nq6ffctsyqxdrzsyr2skeky5qen3/./share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/parallel-20220522-tdt7nq6ffctsyqxdrzsyr2skeky5qen3/./", ":")
setenv("PARALLEL_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/parallel-20220522-tdt7nq6ffctsyqxdrzsyr2skeky5qen3")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
