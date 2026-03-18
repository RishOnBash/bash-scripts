#!/usr/bin/env bash
#
# ---------------------------------------------------------
# setup v1.0 | Script Uninstaller Utility
# ---------------------------------------------------------
# Author:      Rish
# Date:		   March 18, 2026
# License:     MIT
# ---------------------------------------------------------
#
# Global vars
DEST="$PREFIX/bin"
RED='\e[1;31m'
GREEN='\e[1;92m'
RESET='\e[0m'

usage() {
    echo "Usage: ./uninstall.sh [Options]"
    echo "  -R, --remove-all    Remove all scripts"
    echo "  -P, --passgen       Remove passgen"
    echo "  -T, --todo          Remove todo"
    echo "  -V, --vx265         Remove vx265"
}

(($# == 0)) && { usage; exit 1; }

do_remove() {
    local script=$1
    if [[ -f "$DEST/$script" ]]; then
        echo -e "Removing ${RED}$script${RESET} from $DEST..."
        rm "$DEST/$script"
        echo "Done!"
    else
        echo -e "${YELLOW}$script${RESET} is not installed in $DEST. Skipping."
    fi
}

case $1 in
    --passgen | -P ) 
        do_remove "passgen" ;;
    --todo | -T ) 
        do_remove "todo" ;;
    --vx265 | -V )
        do_remove "vx265" ;;
    --remove-all | -R ) 
        do_remove "passgen"
        do_remove "todo"
        do_remove "vx265" ;;
    * ) usage; exit 1 ;;
esac
