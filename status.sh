#!/bin/bash

cat /etc/shadow
EXIT=$?
#echo $EXIT

if [ ${EXIT} == 0  ]; then
#   echo $EXIT
    echo "Command succeeded"
    exit 0
else
    echo "Command failed."
    exit 1
fi

