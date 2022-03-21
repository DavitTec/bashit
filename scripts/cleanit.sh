#! /usr/bin/env bash
# HEADER
# AUTHOR david@davit.ie
set -e
version=0.0.3
me=$(basename "$0")
NC="\033[0m"
R="\033[31m"
Y="\033[33m"
G="\033[32m"
C="\033[36m"
Target="node_modules"

TargetDIR="$HOME/Development"

version() {
    echo "$me $version"
}
usage() {
    version
    echo "Usage: cleanit [NOT WORKING YET]"
}

help() {
    usage
    echo
    echo "##  Find and cleanup \"node_modules\""
    echo "#"
    echo "#  - It would be appropriate to find ALL instances of"
    echo "#    Node modules excluding GLOBAL and add to a"
    echo "#    \$TargetDIR array of Search Folders."
    echo -e "#  - current default \$TargetDIR = $C$TargetDIR$NC"
    echo "#"
    echo "#  - To add all other development Folders, such as \"build\""
    echo "#    and \".next\" under \$TargetDIR"
    echo "#    as these are built or recreated when in Development and"
    echo "#    or Build modes."
    echo -e "#  - This tool is only set to default \$Target=$Y$Target$NC"
    echo "#"
    echo "#"
    echo "#  ISSUES      "
    echo "#  - what happens with PERMISSIONs>  Permission denied"
    echo "#  - Need to add a Exclude folders in Find"
    echo "#####"
    echo "-"
    echo "  -h, --help     Display this help message"
    echo "  -v, --version  Display the version number"
    echo
    echo "  For more information, see https://github.com/DavitTec/bashit/blob/master/scripts/cleanit.md"
    echo
}

options=()
arguments=()
for arg in "$@"; do
    if [ "${arg:0:1}" = "-" ]; then
        if [ "${arg:1:1}" = "-" ]; then
            options[${#options[*]}]="${arg:2}"
        else
            index=1
            while option="${arg:$index:1}"; do
                [ -n "$option" ] || break
                options[${#options[*]}]="$option"
                let index+=1
            done
        fi
    else
        arguments[${#arguments[*]}]="$arg"
    fi
done


for option in "${options[@]}"; do
    case "$option" in
        "h" | "help" )
            help
            exit 0
        ;;
        "v" | "version" )
            version
            exit 0
        ;;
        * )
            usage >&2
            exit 1
        ;;
    esac
done



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
