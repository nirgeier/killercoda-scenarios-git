#!/bin/bash

# Output colors
COLOR_OFF='\033[0m'       # Text Reset
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Red='\033[0;31m'          # Red

# Print output mesage to screen
function initKata(){
    clear
    # Output progress
    echo -e "${Yellow}Waiting for initial script to complete ${COLOR_OFF}"
    # Check if the kata is ready to start
    isReady
}

# Check if the kata is ready  
function ready(){
    # Clear all the previous commands
    history -c
    clear
    echo -e "${Green}Kata is ready. Enjoy! ${COLOR_OFF}"
}

function isReady(){
    # Wait for the kata to be ready
    # The init script should finish with 
    # $ touch /__ready__
    while [ ! -f /__ready__ ]
    do
        echo -en "${Red}.${COLOR_OFF}"
        sleep 1
    done

    # Call ready function
    sleep 5
    ready
}

initKata