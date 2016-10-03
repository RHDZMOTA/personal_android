#!/bin/sh

# anphone_pH.sh
# To run this script go to: cd /sdcard/files_scripts/personal_android
# Run in bash (terminal): sh ./anphone_pH.sh 

echo "Initializing program..."
echo "Okay, everything is fine."
echo "Now sleeping 30 seconds..."
sleep 30
echo "Awake and working..."

# components for the filename (photo label)
# fn="storage/movies/pH/pH"
fn="/storage/external/pH/pH"
nf=".jpg"

# while loop to determine the frequency of the pictures taken
# for 1h use i -eq 720 in if conditional 
i=1
while true
do
   filename="$HOME/$fn$i$nf"
   echo "File saved at $filename / number of cycle: $i"
   termux-camera-photo -c 0 $filename
   
   if [ $i	-eq 3000 ]
   then 
       break 
   fi
   
   i=$((i+1))
   sleep 2
done	