#!/bin/bash
NOW=$(date +"%Y-%m-%d %T")
echo "$NOW start " >> /home/pi/mv_video.txt

sudo find $1 -mindepth 2 -type f -exec file -N -i -- {} + | sed -n 's!: video/[^:]*$!!p' | sudo xargs -i{} mv {} $1 -v --backup=numbered >> /home/pi/mv_video.txt 
sudo find $1 -mindepth 1 -type d | sudo xargs -i{} rm {} -rfv >> /home/pi/mv_video.txt

NOW=$(date +"%Y-%m-%d %T")
echo "$NOW end" >> /home/pi/mv_video.txt

