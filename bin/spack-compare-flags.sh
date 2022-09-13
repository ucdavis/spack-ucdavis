#! /bin/zsh

set -eu

tmpdir=$(mktemp --tmpdir --directory tmp-scf-XXXXXXXX)

typeset -i count=0
for f in /share/apps/spack/opt/spack/linux-ubuntu18.04-broadwell/gcc-10.3.0/$1-*/.spack/spec.json; do
    count+=1
    version=$f:h:h:t
    { jq -S '.spec | .nodes[0] | .parameters? | values' $f 2>/dev/null || jq -S '.spec[0] | .. | .parameters? | values' $f } > $tmpdir/$version
done

if [[ $count == 2 ]]; then
    colordiff --report-identical-files -u -w $tmpdir/*
    cat $tmpdir/*
else
    diff3 $tmpdir/*
fi

rm $tmpdir/$1-*
rmdir $tmpdir
