#!/bin/bash

echo "Specify file extension (lowercase only, no initial dots): "
read EXT

echo "Specify file prefix (defaults to date in YYYY-MM-DD format): "
read PREFIX

# Prepend date if no user input is provided

if [ -z $PREFIX  ]; then
    PREFIX=$(date +%F)
fi

# gracefully handle if no matches are found in the current directory (BASH only)
shopt -s nullglob

# rename all matched files
for name in *.${EXT}
do
#	FILENAME=$(basename ${name})
	mv "$name" "${PREFIX}-${name}"
done

exit 0
