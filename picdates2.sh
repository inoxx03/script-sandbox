#!/bin/bash

DATE=$(date +%F)

for name in *.png
do
#	FILENAME=$(basename ${name})
	mv "$name" "${DATE}-${name}"
done

