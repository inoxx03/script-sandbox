#!/bin/bash

MESSAGE="Shell Scripting is Fun!"
HOSTNAME=$(hostname)

echo "This script is running on ${HOSTNAME}."
echo $MESSAGE

FILE="/etc/shadow"

if [ -f $FILE ]; then
	echo "Shadow passwords are enabled."
fi 

if [ -w $FILE ]; then
	echo "You have permission to edit /etc/shadow."
else
	echo "You do NOT have permission to edit /etc/shadow."
fi

