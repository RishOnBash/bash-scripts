#!/usr/bin/env bash
#
# ---------------------------------------------------------
# Script Installer Utility
# ---------------------------------------------------------
# Author:      Rish
# Date:		   March 20, 2026
# License:     MIT
# ---------------------------------------------------------
#
# Global vars
DEST="$HOME/bin"
SOURCE="$HOME/bash-scripts"
WHITE='\e[1;97m'
RED='\e[1;31m'
GREEN='\e[1;92m'
RESET='\e[0m'

usage() {
    echo "Usage: ./setup.sh [Options]"
    echo "  -I, --install-all   Install all scripts"
    echo "  -P, --passgen       Install passgen (needs openssl)"
    echo "  -T, --todo          Install todo (needs bat)"
    echo "  -V, --vx265         Install vx265 (needs ffmpeg)"
}

(($# == 0)) && { usage; exit 1; }

chk_user_bin() {
    if [[ ! -d $HOME/bin ]]; then
        echo -e "${WHITE}[INFO]${RESET}: Creating user's bin directory ..."
        mkdir -p $HOME/bin
        echo 'export PATH="$PATH:$HOME/bin"' >> $HOME/.bashrc
        source $HOME/.bashrc    # better restart terminal
    else
        echo -e "${GREEN}[OK]${RESET}: ~/bin directory exists."
    fi
}

chk_user_bin

do_copy() {
    local script=$1
    echo -e " Installing ${GREEN}$script${RESET} to ${WHITE}$DEST${RESET} ..."
    cp "$SOURCE/$script" "$DEST/" && chmod +x "$DEST/$script"
    echo "Done!"
}

case $1 in
    --passgen | -P ) 
        command -v openssl >/dev/null || { echo "Install openssl first"; exit 1; }
        do_copy "passgen" ;;
    --todo | -T )
    	command -v bat >/dev/null || { echo "Install bat first"; exit 1; }
        do_copy "todo" ;;
    --vx265 | -V ) 
        command -v ffmpeg >/dev/null || { echo "Install ffmpeg first"; exit 1; }
        do_copy "vx265" ;;
    --install-all | -I ) 
        do_copy "passgen"
        do_copy "todo"
        do_copy "vx265" ;;
    * ) usage; exit 1 ;;
esac
