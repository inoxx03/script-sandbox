#!/bin/bash
DIR=$(pwd)
PICTURES=$(ls *.png)


function rename_files {
	local FNAME="$1"
	local DATE=$(date +%F)
	mv "$FNAME" ${DATE}-"$FNAME"
        exit 0	
}

rename_files $PICTURES
