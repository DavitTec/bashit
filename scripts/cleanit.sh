#! /usr/bin/env bash
# HEADER
# AUTHOR david@davit.ie
version=0.2.1
#
#  Find and cleanup "node_modules"
#
#  - It would be appropriate to find ALL instances of
#    Node modules excluding GLOBAL and add to a
#    $TargetDIR array.
#
#  - To add all other development Folders, such as "build"
#    and ".next" too under $TargetDIR
#    as these are built or recreated when in Development and
#    or Build modes.
#
#  ISSUES
#  - what happens with PERMISSIONs>  Permission denied
#  - Need to add a Exclude folders in Find
#
##
##

NC="\033[0m"
R="\033[31m"
Y="\033[33m"
G="\033[32m"
C="\033[36m"
Target="node_modules"

TargetDIR="$HOME/Development"

#[ -d "$TargetDIR" ] && cd "$TargetDIR" || exit 1

cd "$TargetDIR" || exit 1
dump=$(find . -name "$Target" -type d -print0 -prune | xargs -0 du -hs)

# find "$TargetDIR" -name "$Target" -type d -prune | xargs du -chs

test=$( echo  "$dump" | grep  "$Target" - )
if [ -n  "$test" ]
then
    # code if found
    echo -e "\nFound $G$Target$NC \n This may take awhile\n"
    echo "size      Location"
    echo "----------------------------------"
    find "$TargetDIR" -name "$Target" -type d -print0 -prune | xargs -0 du -chs
    echo "----------------------------------"
else
    # code if not found
    echo -e "No $R $Target $NC found\n"
    exit 1
fi
msg="DELETE ALL $C $Target $NC Under $Y $TargetDIR/. $NC? [y/N] "

read -r -p "$(echo -e "$msg")" response
case "$response" in
    [yY][eE][sS]|[yY])
        echo -e "removing $C $Target $NC \n"
        FIXME #1
        
        # Instead of DELETING - lets place them in TRASH?
        #find . -name "node_modules" -type d  -print0 -prune -exec rm -rf '{}' +   # RISKY for ALL OR NOTHING.
        
        echo "ALL DELETED"
        
    ;;
    *)
        echo "no space saved"
        exit 1
    ;;
esac
