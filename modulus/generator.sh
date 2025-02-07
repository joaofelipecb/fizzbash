#!/bin/bash

while read -r operation
do
	sed "s:\$operation:$operation:g" template.c > source.c
	gcc source.c -o modulus
	right_code=true

	while read -r modulus_ddt
	do
		set -- $modulus_ddt
		x=$1
		y=$2
		expected=$3
		result=$(./modulus $x $y)

		if [[ "$expected" != "$result" ]]
		then
			right_code=false
			break
		fi
	done <<< $(tail -n +2 modulus.ddt)

	if [[ "$right_code" == true ]]
	then
		echo "right code is:"
		cat source.c
		break
	fi
done <<< $(tail -n +2 math_operations.data)

