-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-03-02 16:30:04.781926
--
-- intel-oneapi-compilers@2022.2.1%gcc@11.3.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/emmtgav
--

whatis([[Name : intel-oneapi-compilers]])
whatis([[Version : 2022.2.1]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Intel oneAPI Compilers. Includes: icc, icpc, ifort, icx, icpx, ifx, and dpcpp.]])

help([[Intel oneAPI Compilers. Includes: icc, icpc, ifort, icx, icpx, ifx, and
dpcpp. LICENSE INFORMATION: By downloading and using this software, you
agree to the terms and conditions of the software license agreements at
https://intel.ly/393CijO.]])

-- Services provided by the package
family("compiler")

-- Loading this module unlocks the path below unconditionally
prepend_path("MODULEPATH", "/share/apps/spack/modulefiles/oneapi/2022.2.1")



prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-compilers-2022.2.1-emmtgavvau4zt54suxbzqw25znqx2cko/./", ":")
prepend_path("ACL_BOARD_VENDOR_PATH", "/opt/Intel/OpenCLFPGA/oneAPI/Boards", ":")
setenv("CMPLR_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-compilers-2022.2.1-emmtgavvau4zt54suxbzqw25znqx2cko/compiler/2022.2.1")
prepend_path("DIAGUTIL_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-compilers-2022.2.1-emmtgavvau4zt54suxbzqw25znqx2cko/compiler/2022.2.1/sys_check/sys_check.sh", ":")
setenv("FPGA_VARS_ARGS", "")
setenv("FPGA_VARS_DIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-compilers-2022.2.1-emmtgavvau4zt54suxbzqw25znqx2cko/compiler/2022.2.1/linux/lib/oclfpga")
setenv("INTELFPGAOCLSDKROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-compilers-2022.2.1-emmtgavvau4zt54suxbzqw25znqx2cko/compiler/2022.2.1/linux/lib/oclfpga")
prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-compilers-2022.2.1-emmtgavvau4zt54suxbzqw25znqx2cko/compiler/2022.2.1/linux/lib:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-compilers-2022.2.1-emmtgavvau4zt54suxbzqw25znqx2cko/compiler/2022.2.1/linux/lib/x64:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-compilers-2022.2.1-emmtgavvau4zt54suxbzqw25znqx2cko/compiler/2022.2.1/linux/lib/oclfpga/host/linux64/lib:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-compilers-2022.2.1-emmtgavvau4zt54suxbzqw25znqx2cko/compiler/2022.2.1/linux/compiler/lib/intel64_lin", ":")
prepend_path("LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-compilers-2022.2.1-emmtgavvau4zt54suxbzqw25znqx2cko/compiler/2022.2.1/linux/compiler/lib/intel64_lin:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-compilers-2022.2.1-emmtgavvau4zt54suxbzqw25znqx2cko/compiler/2022.2.1/linux/lib", ":")
prepend_path("NLSPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-compilers-2022.2.1-emmtgavvau4zt54suxbzqw25znqx2cko/compiler/2022.2.1/linux/compiler/lib/intel64_lin/locale/%l_%t/%N", ":")
prepend_path("OCL_ICD_FILENAMES", "libintelocl_emu.so:libalteracl.so:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-compilers-2022.2.1-emmtgavvau4zt54suxbzqw25znqx2cko/compiler/2022.2.1/linux/lib/x64/libintelocl.so", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-compilers-2022.2.1-emmtgavvau4zt54suxbzqw25znqx2cko/compiler/2022.2.1/linux/IntelDPCPP", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-compilers-2022.2.1-emmtgavvau4zt54suxbzqw25znqx2cko/compiler/2022.2.1/documentation/en/man/common:/home/camw/.nvm/versions/node/v14.20.0/share/man:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openmpi-4.1.4-gjiqdtia5wusawcsv7mfe2iamonjhhnt/share/man:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/slurm-22-05-6-1-3dz7gzsvu525mdhjtnzd22hruq4n4cdw/share/man:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/pmix-4.1.2-uc3xvg5kif37urqmcdzjqca47terufuv/share/man:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/hwloc-2.8.0-we7qgbmgvhlep6h7cown7njd76rec6vr/share/man:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/lmod-8.7.14-me23awyewpjq5wm44nluiejc3fshkdny/lmod/lmod/share/man::/opt/puppetlabs/puppet/share/man:/home/camw/.nvm/versions/node/v14.20.0/share/man:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openmpi-4.1.4-gjiqdtia5wusawcsv7mfe2iamonjhhnt/share/man:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/slurm-22-05-6-1-3dz7gzsvu525mdhjtnzd22hruq4n4cdw/share/man:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/pmix-4.1.2-uc3xvg5kif37urqmcdzjqca47terufuv/share/man:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/hwloc-2.8.0-we7qgbmgvhlep6h7cown7njd76rec6vr/share/man:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/lmod-8.7.14-me23awyewpjq5wm44nluiejc3fshkdny/lmod/lmod/share/man::/opt/puppetlabs/puppet/share/man:/home/camw/.fzf/man", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-compilers-2022.2.1-emmtgavvau4zt54suxbzqw25znqx2cko/compiler/2022.2.1/linux/bin", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-compilers-2022.2.1-emmtgavvau4zt54suxbzqw25znqx2cko/compiler/2022.2.1/linux/bin/intel64", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-compilers-2022.2.1-emmtgavvau4zt54suxbzqw25znqx2cko/compiler/2022.2.1/linux/lib/oclfpga/bin", ":")
prepend_path("PKG_CONFIG_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-compilers-2022.2.1-emmtgavvau4zt54suxbzqw25znqx2cko/compiler/2022.2.1/lib/pkgconfig", ":")
setenv("CC", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-compilers-2022.2.1-emmtgavvau4zt54suxbzqw25znqx2cko/compiler/2022.2.1/linux/bin/icx")
setenv("CXX", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-compilers-2022.2.1-emmtgavvau4zt54suxbzqw25znqx2cko/compiler/2022.2.1/linux/bin/icpx")
setenv("F77", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-compilers-2022.2.1-emmtgavvau4zt54suxbzqw25znqx2cko/compiler/2022.2.1/linux/bin/ifx")
setenv("FC", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-compilers-2022.2.1-emmtgavvau4zt54suxbzqw25znqx2cko/compiler/2022.2.1/linux/bin/ifx")
setenv("INTEL_ONEAPI_COMPILERS_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/intel-oneapi-compilers-2022.2.1-emmtgavvau4zt54suxbzqw25znqx2cko")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
