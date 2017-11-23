#!/bin/bash

# FILE SPLITTER

if [ "$#" -ne 3 ]; then
	echo "Usage: $0 <DIGITS> <FILENAME> <PREFIX>"
	exit 1
fi

filename=$2
ext=".${filename##*.}"
split -l $1 -d $2 $3 --additional-suffix=$ext
