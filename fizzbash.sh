#!/bin/bash

shopt -s expand_aliases
alias modulus="./modulus/modulus"
alias fizzbuzz="./fizzbuzz/fizzbuzz.sh"

n=$1

for (( i=1; i<=$n; i++ ))
do
	mod_3=$(modulus $i 3)
	mod_5=$(modulus $i 5)

	fizzbuzz=$(fizzbuzz $mod_3 $mod_5)
	set -- $fizzbuzz
	show_number=$1
	text=$2

	if [[ "$show_number" == true ]]
	then
		echo $i
	else
		echo $text
	fi
done

