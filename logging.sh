#!/bin/bash

MESSAGE="${RANDOM}"

echo $MESSAGE

logger -i -p user.info -t randomly "${MESSAGE}"

exit 0
