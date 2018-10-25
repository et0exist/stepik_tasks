#!/bin/bash

echo "enter your name:"
read name
if [[ $name == "" ]]
then
	echo bye
	exit
fi

echo "enter your age:"
read age
if [[ "$(($age))" -le 0 ]]
then
	echo bye
	exit
fi

while [[ "$(($age))" -gt 0 && $name != "" ]]
do
	if [[ $age -gt 0 && $age -le 16 ]]
	then
		echo "$name, your group is child"
	elif [[ $age -ge 17 && $age -le 25 ]]
	then
		echo "$name, your group is youth"
	else
		echo "$name, your group is adult"
	fi
	echo "enter your name:"
	read name
	if [[ $name == "" ]]
	then
		echo bye
		exit
	fi
	echo "enter your age:"
	read age
	if [[ "$(($age))" -le 0 ]]
	then
		echo bye
		exit
	fi
done
echo bye
