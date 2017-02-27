#!/bin/bash -x

NAME=`echo "$1" | cut -d'.' -f1`
EXTENSION=`echo "$1" | cut -d'.' -f2`
INPREFIX="original_"
OUTPREFIX="SENZAPROTEZIONI_"

pdf2ps "$NAME.$EXTENSION"
mv -v "$1" "$INPREFIX$1"
sed -i -e "/mark currentfile eexec/,/cleartomark/ d" "$NAME.ps"
ps2pdf "$NAME.ps"
rm "$NAME.ps"
mv -v "$NAME.pdf" "$OUTPREFIX$NAME.$EXTENSION"
