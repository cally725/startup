#!/bin/bash
#source gpio  
  
# Pin 36 = GPIO 27  Asile
# Pin 32 = GPIO 26  Olympic
# Pin 33 = GPIO 23  Bunker

gpio mode 23 input
gpio mode 23 up
gpio mode 26 input
gpio mode 26 up
gpio mode 27 input
gpio mode 27 up

val=$(gpio read 23)

if [ $val == 0 ]; then
    cd /home/pi/evadezVous/bunker/
    ./bunker
fi

val=$(gpio read 26)

if [ $val == 0 ]; then
    cd /home/pi/evadezVous/garage/
    ./garage
fi

val=$(gpio read 27)

if [ $val == 0 ]; then
    cd /home/pi/evadezVous/asile/
    ./asile
fi


