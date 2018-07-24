#!/bin/bash

#This is generic, obvious content sections exist for specifics.

if [ "$EUID" != 0 ]
	then echo "Run me as root!"
	exit
fi

ME=$0

while (( "$#" )); do
	case "$1" in
		setup|-s)

			;; # End setup
		stop|-x)

			;; # End stop
		start|-y)

			;; # End start
		delete|-d)
			read -p "You're about to force delete the mysql docker image, and all data along with it. Are you sure? [Y/n]  " -n 1 -r
			if [[ $REPLY =~ ^[Yy]$ ]]
			then

			fi
			break
			;; # End delete
		help|-h|--help)

			;; # End help
		--)
			break
			;;
		-*|--*=|*) # Catch all unsupported flags
			echo "Error: Unsupported flag $1"
			exit 1
			;; # End
	esac
done


# End of script.