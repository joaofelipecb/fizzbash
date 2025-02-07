#!/bin/bash

this_dir=$(dirname $(realpath $0))

mod_3=$1
mod_5=$2
decision=$(gawk -F'\t' "(\$1 == $mod_3 || \$1 == \"\") && (\$2 == $mod_5 || \$2 == \"\"){print \$3 \" \" \$4; exit;}" $this_dir/fizzbuzz.dt)
echo $decision
