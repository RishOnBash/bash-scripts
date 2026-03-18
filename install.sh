#!/usr/bin/env bash
#
# ---------------------------------------------------------
# setup v1.0 | Script Installer Utility
# ---------------------------------------------------------
# Author:      Rish
# Date:		   March 18, 2026
# License:     MIT
# ---------------------------------------------------------
#
# Global vars
DEST="$PREFIX/bin"
SOURCE="$HOME/bash-scripts"
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

do_copy() {
    local script=$1
    echo "Installing $script to $DEST..."
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