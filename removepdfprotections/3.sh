#!/bin/bash

SUFFIXOUT="_WITHOUT_PROTECION"

if [ $# -eq 0 ]
  then
    echo "Usage: $0 INPUT_PDF_FILENAME PASSWORD"
    echo "Output file suffix: \"$SUFFIXOUT\""
    exit 1
fi

FILENAME=$(basename "$1")
EXTENSION="${FILENAME##*.}"
FNAME="${FILENAME%.*}"

qpdf --password="$2" --decrypt "$1" "$FNAME$SUFFIXOUT.$EXTENSION"
