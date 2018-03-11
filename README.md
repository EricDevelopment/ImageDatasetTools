# ImageDatasetTools
A collection of tools for annotating object detection datasets for machine learning.


# makeLabelFiles.sh
This script takes a directory of .jpg images as a commmand-line argument and makes a sub-directory called "LabelData" with a .txt file with the same name for each image in the original folder.
For use with euclid image annotation tool.

Example usage: ./makeLabelFiles.sh imagesDirectory/

# euclid.py
This is just a copy of a useful image annotation tool that I found to be useful from here: https://github.com/prabindh/euclid
It supports the KITTI dataset format used by NVIDIA DIGITS for object detection. I recommend running the makeLabelFiles script first, as euclid will not make a .txt file for an image if no bounding boxes are drawn, which causes problems in DIGITS.
