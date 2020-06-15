#!/bin/bash

echo "Input file is $1 and here's all the camera and location metadata in image"

exiftool '-*lens*' $1
exiftool '-gps:all' $1
exiftool '-make' $1
exiftool '-model' $1

echo "Removing all this metadata"

exiftool -*lensinfo*= $1
exiftool -*lensmodel*= $1
exiftool -*lensmake*= $1
exiftool -gps:all= $1
exiftool -make= $1
exiftool -model= $1