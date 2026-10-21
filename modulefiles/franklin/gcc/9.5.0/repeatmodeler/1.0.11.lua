-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-18 10:54:08.891329
--
-- repeatmodeler@1.0.11%gcc@9.5.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/krwooro
--

whatis([[Name : repeatmodeler]])
whatis([[Version : 1.0.11]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : RepeatModeler is a de-novo repeat family identification and modeling package.]])

help([[RepeatModeler is a de-novo repeat family identification and modeling
package.]])


depends_on("ncbi-rmblastn/2.11.0")
depends_on("recon/1.05")
depends_on("repeatmasker/4.0.9")
depends_on("repeatscout/1.0.5")

prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/repeatmodeler-1.0.11-krwoorog2rolc7qxusoovda7f2rrfwwh/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/repeatmodeler-1.0.11-krwoorog2rolc7qxusoovda7f2rrfwwh/./", ":")
prepend_path("PERL5LIB", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/perl-json-2.97001-2piprqjzzsu7vnvdnk36qsmja5gi27w3/lib/perl5:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/perl-libwww-perl-6.33-5l4xzhumhmxmp45neyysfrpw4lyllvm3/lib/perl5:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/perl-encode-locale-1.05-tugv3l4eystygmv2ruirncgw47mcroxf/lib/perl5:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/perl-file-listing-6.04-h6usf2bbjypl3nf3rjxgwmnnqbsqrd76/lib/perl5:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/perl-http-date-6.02-6ub2ngsqptj37rnobsykkqlhzuksmcu7/lib/perl5:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/perl-html-parser-3.72-uvjmahawn7rade6ufaadvpl4d4pu2fmc/lib/perl5:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/perl-html-tagset-3.20-owual7l4dpi3hm2r3il7fsadbq2zblww/lib/perl5:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/perl-http-cookies-6.04-phcellmv6ntidtj6zl3qbojzkwjluema/lib/perl5:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/perl-http-message-6.13-vxomagd622cx5wg6rkvuyj7zyz5hp3c6/lib/perl5:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/perl-io-html-1.001-wdi5mrico3ybpcbm47w2oso4hcc63pa4/lib/perl5:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/perl-lwp-mediatypes-6.02-jcqobpjmjmfh6wgghnwcmufukj2bnfkp/lib/perl5:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/perl-try-tiny-0.28-ptvbt444z662inh2yh64i7hw675dw3i2/lib/perl5:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/perl-uri-1.72-m66avmw7wjmztkswrsrmopvciashocvx/lib/perl5:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/perl-http-daemon-6.01-vzjoanppdxw55cqqlpnwgn32j6rswj7y/lib/perl5:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/perl-http-negotiate-6.01-yfrvd5gtlrujdsi7rwsenth6nzgst3wi/lib/perl5:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/perl-net-http-6.17-rwiduefc75id4wdjtrktsyh6w3qnhvo6/lib/perl5:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/perl-www-robotrules-6.02-r262hlzfwl4t346y5lfvyklq4cdqgses/lib/perl5:/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/perl-text-soundex-3.05-savlt6wglad6dl5sqiuszamfli5ace2w/lib/perl5", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/libx11-1.7.0-hbjdyk7tsewaqj7p6zkuaktdslrrl2lq/share/X11/locale", ":")
setenv("REPEATMODELER_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/repeatmodeler-1.0.11-krwoorog2rolc7qxusoovda7f2rrfwwh")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
