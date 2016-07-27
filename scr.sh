#!/bin/bash


# This is a test script.
# Outputs a classic "Hello World" and runs the file sample.py with python.
# To run from shell, do as follows:
# a) sh ./scr.sh 
# b) bash ./scr.sh
# Note: remember to be in the same directory as the file. 


echo "Hello World! \n"


echo "This is the date and time... "
date +%d_%m_%y-%H.%M.%S
echo "Location:" 
termux-location

echo "And now, a photo with your front camara has been taken."
termux-camera-photo -c 0 /sdcard/pictures/scr_photo1.jpg

echo "This is a set of random numbers: "
python sample.py