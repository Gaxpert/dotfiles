#!/usr/bin/env bash

file=$1
# pandoc "$file" | lynx -stdin
glow $file -p

