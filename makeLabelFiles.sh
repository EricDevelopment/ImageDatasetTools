#!/bin/bash
#Eric Smith
#This script takes a directory of training images as
#a command-line argument
#It then makes a sub-directory called "LabelData"
#With one blank text file for each .jpg in the original directory
#for use with the euclid.py labelling tool

#check that filpath is supplied
if [ $# -eq 0 ]
  then
    echo "No filepath to image directory supplied"
    exit 1
fi

mkdir -p $1/LabelData

for f in $1*.jpg
do
  filename=$(basename "$f")
  touch "$1LabelData/$filename.txt"
done
