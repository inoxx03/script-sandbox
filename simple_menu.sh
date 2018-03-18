#!/bin/bash

# condition for infinite loop
while true
do

read -p "What would you like to do? 1: Show disk usage, 2: Show system uptime, q: Quit. " OPTION
	
    case ${OPTION} in
      	    1)
	        df -h
		printf "\n"
	        continue
    	        ;;
	    2)
                uptime
		printf "\n"
	        continue
	        ;;
	    3)
		who
		printf "\n"
	        continue
		;;
            q)
	        echo "Goodbye!"
    	        break		
		;;
	    *)
    	        echo "Invalid option!"
	        continue
	        ;;	
    esac
done

exit 0
