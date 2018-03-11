#!/bin/bash
#Eric Smith
#Takes one command-line argument for number of seconds
#to pause between pictures

#Creates a directory called "images" that it saves
#all images to in .jpg format

#Defaults to /dev/video0 for USB webcam at resolution 1024x576
#Saves images as 1.jpg, 2.jpg, etc.

if [ $# -eq 0 ]
  then
    echo "No image capture pause time supplied"
    exit 1
fi


mkdir -p $PWD/images
while :
do
  let NUM++
  fswebcam -d /dev/video0 -r 1024x576 --no-banner "$PWD/images/$NUM.jpg"
  sleep $1
done
