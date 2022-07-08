#!/bin/bash
NOW=$(date +"%Y-%m-%d %T")
echo "$NOW start " >> $HOME/mv_video.txt

find $1 -mindepth 2 -type f -exec file -N -i -- {} + | sed -n 's!: video/[^:]*$!!p' | xargs -i{} mv {} $1 -v --backup=numbered >> $HOME/mv_video.txt 
find $1 -mindepth 1 -type d | xargs -i{} rm {} -rfv >> $HOME/mv_video.txt

NOW=$(date +"%Y-%m-%d %T")
echo "$NOW end" >> $HOME/mv_video.txt

