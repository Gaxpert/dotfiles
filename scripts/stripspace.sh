#!/bin/sh
# Renames a file by stripping out the spaces
newname=$(echo "$1" | sed 's/ /_/g')
mv "$1" "$newname"

