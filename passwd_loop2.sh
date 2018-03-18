#!/bin/bash

read -p "How many lines would you like to read?: " LINES

LINE_NUM=1

while [ ${LINE_NUM} -le ${LINES} ] 
do
    read LINE	
    echo "${LINE_NUM}: ${LINE}"
    ((LINE_NUM++))
done < /etc/passwd

exit 0


