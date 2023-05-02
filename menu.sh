#!/bin/bash

execute_file()
{
	if [[ -x "$1" ]]; then
		./"$1"
	else
		chmod +x "$1"
		./"$1"
	fi
}

for file in *
do
	echo "v) view $file"
	echo "e) Edit $file"
	echo "c) Compile $file"
	echo "x) Execute $file"
	echo "q) quit"
	read CHOICE
	case $CHOICE in
		v)
			less "$file"
			;;
		e)
			nano "$file"
                        ;;
		c)
			g++ "$file"
                        ;;
		x)
			execute_file "$file"
                        ;;
		q)
			exit N
                        ;;
		*)
			echo "INVALID RESPONSE"
			echo "Skipping this file!"
                        ;;
	esac
done
