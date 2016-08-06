#!/bin/sh

# To run this script go to: cd /sdcard/files_scripts/personal_android
# Run in bash (terminal): sh ./test.sh 

# Just a random value 
a=57
echo "the value of a is $a"

# Just a for loop 
for a in 7 8 9 10
do
    echo -n "$a "
done

# An empty echo
echo 

# Number of seconds used
secs=3600
echo "The number of secs used is $secs. "

# Just an example for a conditional
count=100
if [ $count -eq 100 ]
then
    echo "Okay, this script is running..."
fi

# components for the filename (photo label)
fn="/storage/pictures/pH/pH"
nf=".jpg"

# while loop to determine the frequency of the pictures taken
# for 1h use i -eq 720 in if conditional 
i=1
while true
do
   filename="$HOME/$fn$i$nf"
   echo "File saved at $filename / number of cycle: $i"
   termux-camera-photo -c 0 $filename
   
   if [ $i	-eq 5 ]
   then 
       break 
   fi
   
   i=$((i+1))
   sleep 5
done	

