#! /usr/bin/env bash
# HEADER
# AUTHOR david@davit.ie
#set -e
NC="\033[0m"
R="\033[31m"
Y="\033[33m"
G="\033[32m"
C="\033[36m"
Target="node_modules"
TargetDIR="$HOME/Development"
oldIFS="$IFS"

IFS=$'\n'
find "$TargetDIR" -name "$Target" -type d -print0 -prune | xargs -0 du -hs > projects

options+=($(cat ./projects | grep -v "e\[0m"))
options+=("exit")
IFS="$oldIFS"
PS3='Select a Project to mark:'
select opt in "${options[@]}"
do
    case $opt in
        exit) break;;
        *) echo $opt; break;;
    esac
done

#sed -i "s/$opt/-*$opt/" ./projects; break;;
