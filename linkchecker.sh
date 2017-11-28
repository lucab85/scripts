#!/bin/bash

# LINK CHECKER

if [ "$#" -ne 2 ]; then
	echo "Usage: $0 <URL> <OUTPUT>"
	exit 1
fi

linkchecker -o=csv --timeout=300 --no-warnings "$1" > "$2"
