-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:49.491878
--
-- repeatmasker@4.0.9%gcc@9.5.0~crossmatch build_system=generic patches=b9e0ce5 arch=linux-ubuntu22.04-x86_64_v3/no2g7tw
--

whatis([[Name : repeatmasker]])
whatis([[Version : 4.0.9]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : RepeatMasker is a program that screens DNA sequences for interspersed repeats and low complexity DNA sequences.]])

help([[RepeatMasker is a program that screens DNA sequences for interspersed
repeats and low complexity DNA sequences.]])


depends_on("hmmer/3.3.2")
depends_on("ncbi-rmblastn/2.11.0")

prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/repeatmasker-4.0.9-no2g7twwfys7vltgj6cksnvrajyitwdd/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/repeatmasker-4.0.9-no2g7twwfys7vltgj6cksnvrajyitwdd/./", ":")
prepend_path("PERL5LIB", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/perl-text-soundex-3.05-savlt6wglad6dl5sqiuszamfli5ace2w/lib/perl5", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/libx11-1.7.0-hbjdyk7tsewaqj7p6zkuaktdslrrl2lq/share/X11/locale", ":")
setenv("REPEATMASKER_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/repeatmasker-4.0.9-no2g7twwfys7vltgj6cksnvrajyitwdd")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
