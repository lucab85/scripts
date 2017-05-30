#!/bin/bash

SUFFIXOUT="_WITHOUT_PROTECION"

if [ $# -eq 0 ]
  then
    echo "Usage: $0 INPUT_PDF_FILENAME"
    echo "Output file suffix: \"$SUFFIXOUT\""
    exit 1
fi

FILENAME=$(basename "$1")
EXTENSION="${FILENAME##*.}"
FNAME="${FILENAME%.*}"

pdf2ps "$FNAME.$EXTENSION"
sed -i -e "/mark currentfile eexec/,/cleartomark/ d" "$FNAME.ps"
ps2pdf "$FNAME.ps"
rm "$FNAME.ps"
mv -v "$FNAME.pdf" "$FNAME$SUFFIXOUT.$EXTENSION"
