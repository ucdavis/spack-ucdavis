#! /bin/zsh

set -eu

PROGRAM=${0:t}

setopt NULL_GLOB
setopt NOMATCH
setopt GLOB_SUBST

modbase="/share/apps/modulefiles/hpc/spack"

[[ ! -e $modbase ]] && mkdir $modbase

cd $modbase/

if [[ $# -eq 1 && $1 == *@* ]]; then
   a=( ${(ps:@:)1} )
   1=$a[1]
   2=$a[2]
fi

what=$1
version=$2

hash="*"

if [[ $# -eq 3 ]]; then
    hash=$3
fi

what_l=$what:l

rel="${SPACK_ROOT}/share/spack/modules/linux-ubuntu18.04-x86_64"

typeset -a versions=( $(echo $rel/$what_l-$version-*-$hash ) )

if [[ $#versions -eq 0 ]]; then
    echo "$PROGRAM: Unable to find any installations of $what_l-$version-*-$hash in $(realpath $rel)"
    exit 1
elif [[ $#versions -gt 1 ]]; then
    echo "$PROGRAM: error, more than one version. Try again with the hash."
    ls -ld $rel/$what_l-$version-$hash
    exit 1
fi

if [[ ! -d $what ]]; then
    mkdir $what
fi

dst="$what/$version"

hash=${versions[1]##*-}

echo "Linking $versions[1]:t => $dst"

if [[ -e $dst ]]; then
    echo "$PROGRAM: $dst already exists, cowardly aborting."
    ls -l $dst
    exit 1
fi

spack_module_file="$what/.$version-$hash"

cat >$dst <<EOF
#%Module1.0
# $what $version via spack
# $(date -I)

# Local modifications here

source /share/apps/modulefiles/hpc/spack/$spack_module_file
EOF

(cd $what && ln -s $versions[1] ".${version}-${hash}")

