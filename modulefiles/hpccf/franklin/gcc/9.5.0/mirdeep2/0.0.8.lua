-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-18 10:54:06.778870
--
-- mirdeep2@0.0.8%gcc@9.5.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/pnqex3s
--

whatis([[Name : mirdeep2]])
whatis([[Version : 0.0.8]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : miRDeep2 is a completely overhauled tool which discovers microRNA genes by analyzing sequenced RNAs.]])

help([[miRDeep2 is a completely overhauled tool which discovers microRNA genes
by analyzing sequenced RNAs.]])


depends_on("bowtie/1.3.0")

prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mirdeep2-0.0.8-pnqex3sbalk5txwvtviurb6v4cw2egf6/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mirdeep2-0.0.8-pnqex3sbalk5txwvtviurb6v4cw2egf6/./", ":")
prepend_path("PERL5LIB", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/perl-pdf-api2-2.033-cp7gcbvy5e7h6kellqtghoslrnyt7tpy/lib/perl5:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/perl-font-ttf-1.06-44go7locpwgzfyovnvvzgqkjo2c62vlk/lib/perl5:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/perl-test-exception-0.43-7ooco6g6k5ypikd5wvt7apkoemqnbgk3/lib/perl5:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/perl-sub-uplevel-0.2800-lnmckp3a6i7vwc2aeuflu3npr346dlnh/lib/perl5:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/perl-test-memory-cycle-1.06-eaw7elgogmtbrwjsaavqzxcub4vkea6o/lib/perl5:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/perl-devel-cycle-1.12-4cqdwz5c2mpf23wuw33ttl7ikgw77an4/lib/perl5:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/perl-padwalker-2.2-smeghmwmx6z3thiqodgvzij4dnvt5anf/lib/perl5", ":")
setenv("MIRDEEP2_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mirdeep2-0.0.8-pnqex3sbalk5txwvtviurb6v4cw2egf6")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
