#!/bin/bash
FILE="$HOME/.bashrc"
if ! grep -q "$*" "$FILE" ; then
    echo -e "\n$*" >> "$FILE";
fi
