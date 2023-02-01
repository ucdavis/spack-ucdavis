-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-18 10:54:05.782248
--
-- jellyfish@1.1.11%gcc@9.5.0 build_system=autotools patches=e729c13 arch=linux-ubuntu22.04-x86_64_v3/wqprn2b
--

whatis([[Name : jellyfish]])
whatis([[Version : 1.1.11]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : JELLYFISH is a tool for fast, memory-efficient counting of k-mers in DNA.]])

help([[JELLYFISH is a tool for fast, memory-efficient counting of k-mers in
DNA.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/jellyfish-1.1.11-wqprn2bkov5gerbm6mmx5ruic77rahjw/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/jellyfish-1.1.11-wqprn2bkov5gerbm6mmx5ruic77rahjw/./share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/jellyfish-1.1.11-wqprn2bkov5gerbm6mmx5ruic77rahjw/./lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/jellyfish-1.1.11-wqprn2bkov5gerbm6mmx5ruic77rahjw/./", ":")
setenv("JELLYFISH_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/jellyfish-1.1.11-wqprn2bkov5gerbm6mmx5ruic77rahjw")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
