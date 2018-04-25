#!/bin/bash

function get_window_id () {
    value= xdotool search --name "Telegram "
    return $value
}

window_id=$(get_window_id)

if [ -z $window_id ];
then 
    echo "Error: run telegram and try again"
    exit
fi

for ((i=1; i<=1000; i++))
do
    xdotool type --window $window_id "xxxxxxxxxxxxxxxxxxxxx"
    xdotool windowactivate $window_id
    xdotool key Return 
done
exit
