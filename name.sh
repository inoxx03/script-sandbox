#!/bin/bash


#echo "Input filename:"
#read FILE

for FILE in $@; do

if [ -d "${FILE}" ] ; then
    echo "${FILE} is a directory.";
else
    if [ -f "${FILE}" ]; then
	echo "${FILE} is a file.";
    else
	echo "${FILE} is not valid.";
	exit 1
   fi
fi

ls -l $FILE
done
