#!/bin/bash

function log_message {
logger -i -p user.info -t randomly $1
}

for i in {1..3}
do
MESSAGE="${RANDOM}"
echo $MESSAGE
log_message $MESSAGE
done

exit 0
