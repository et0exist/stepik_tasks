#!/bin/bash
calc ()
{
	if [[ $2 == "+" ]]
	then
		let "d = $1 + $3"
		echo $d
	elif [[ $2 == "-" ]]
	then
		let "d = $1 - $3"
		echo $d
	elif [[ $2 == "*" ]]
	then
		let "d = $1 * $3"
		echo $d
	elif [[ $2 == "/" ]]
	then
		let "d = $1 / $3"
		echo $d
	elif [[ $2 == "%" ]]
	then
		let "d = $1 % $3"
		echo $d
	else
		let "d = $1 ** $3"
		echo $d
	fi

}

while [[ true ]]
do
	read a b c
	if [[ $a == "exit" ]]
	then
		echo bye
		break
	elif [[ $a == "" || $b == "" || $c == "" ]]
	then
		echo error
		break

	elif [[ $b == "+" || $b == "-" || $b == "*" || $b == "/" || $b == "%" || $b == "**" ]]
	then
		calc $a "$b" $c
	else
		echo error
		break
	fi
done
