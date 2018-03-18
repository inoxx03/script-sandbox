#!/bin/bash

# condition for infinite loop
while true
do

read -p "What would you like to do? 1: Show disk usage, 2: Show system uptime, q: Quit. " OPTION
	
    case ${OPTION} in
      	    1)
	        df -h
	        continue
    	        ;;
	    2)
                uptime
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
