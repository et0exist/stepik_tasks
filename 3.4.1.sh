#!/bin/bash
gcd ()
{
	if [[ $1 -eq $2 ]]
	then
		echo "GCD is $1"
	elif [[ $1 -gt $2 ]]
	then
		let "c = $1 - $2"
		gcd $c $2
	else
		let "c = $2 - $1"
		gcd $1 $c
	fi
}

while [[ true ]]
do
	read a b
	if [[ $a == "" ]]
	then
		echo bye
		break
	else
		gcd $a $b
	fi
done
