-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-18 10:54:08.414425
--
-- raxml-ng@1.0.2%gcc@9.5.0~ipo+mpi build_system=cmake build_type=RelWithDebInfo arch=linux-ubuntu22.04-x86_64_v3/sveoep3
--

whatis([[Name : raxml-ng]])
whatis([[Version : 1.0.2]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : RAxML-NG is a phylogenetic tree inference tool which uses maximum-likelihood (ML) optimality criterion.]])
whatis([[Configure options : -DUSE_MPI:BOOL=ON]])

help([[RAxML-NG is a phylogenetic tree inference tool which uses maximum-
likelihood (ML) optimality criterion. Its search heuristic is based on
iteratively performing a series of Subtree Pruning and Regrafting (SPR)
moves, which allows to quickly navigate to the best-known ML tree.
RAxML-NG is a successor of RAxML (Stamatakis 2014) and leverages the
highly optimized likelihood computation implemented in libpll (Flouri et
al. 2014).]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/raxml-ng-1.0.2-sveoep3iwavkf5sakdpnwtkyw63hbkdx/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/raxml-ng-1.0.2-sveoep3iwavkf5sakdpnwtkyw63hbkdx/./", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/libx11-1.7.0-hbjdyk7tsewaqj7p6zkuaktdslrrl2lq/share/X11/locale", ":")
setenv("RAXML_NG_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/raxml-ng-1.0.2-sveoep3iwavkf5sakdpnwtkyw63hbkdx")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
