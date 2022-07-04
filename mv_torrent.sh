#!/bin/bash
NOW=$(date +"%Y-%m-%d %T")
echo "$NOW start " >> $HOME/mv_torrent.txt

sudo find /media/NAS1/torrents -mindepth 2 -type f -exec file -N -i -- {} + | sed -n 's!: video/[^:]*$!!p' | sudo xargs -i{} mv {} /media/NAS1/torrents -v --backup=numbered >> $HOME/mv_torrent.txt 
sudo find /media/NAS1/torrents/ -mindepth 1 -type d | sudo xargs -i{} rm {} -rfv >> $HOME/mv_torrent.txt

NOW=$(date +"%Y-%m-%d %T")
echo "$NOW end" >> $HOME/mv_torrent.txt

