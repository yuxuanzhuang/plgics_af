#!/bin/bash

module load hwloc/1.11.1
location=$1
output_name=$2
x=$3
y=$4
z=$5
/nethome/yzhuang/chap/build/chap -f $location/chap/$output_name.pdb -s $location/chap/$output_name.pdb -pf-max-free-dist 2 -pf-vdwr-fallback 0 -pf-cutoff 0 -de-bandwidth 0.1 -pf-init-probe-pos $x $y $z -out-filename $location/chap/$output_name -hydrophob-fallback 0
