#!/bin/bash

PASSED=$1

if [ -f "$PASSED" ]; then
    echo "${PASSED} is a regular file."
    exit 0
elif [ -d "$PASSED" ]; then
    echo "${PASSED} is a directory."
    exit 1
elif [ -e "$PASSED" ]; then
    echo "${PASSED} exists."
    exit 2
elif [ $PASSED="" ]; then
    echo "Argument expected!"
    exit 3
else
    echo "${PASSED} is not valid."
    exit 4
fi
