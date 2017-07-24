#!/bin/bash

# with trailing slash
DIR_TMP="tmp/"
DIR_OUTPUT="out/"

rm -fr $DIR_TMP
mkdir -pv $DIR_TMP
rm -fr $DIR_OUTPUT
mkdir -pv $DIR_OUTPUT

for f in *.msg; do
        echo "1. Processing $f file..";
        msgconvert "$f"
        rm -f "$f"
        f_eml=$(basename "$f")
        f_eml="${f_eml%.*}.eml"

        echo "2. Processing $f_eml file..";
        ripmime -i "$f_eml" -d $DIR_TMP;
        if [ ! -f $DIR_TMP*.pdf ]; then
           echo "NO PDF INSIDE"
        fi
        mv -v $DIR_TMP*.pdf $DIR_OUTPUT
        
        if [ -f $DIR_TMP*.zip ]; then
           echo "FOUND ZIP INSIDE"
           mv -v $DIR_OUTPUT*.zip $DIR_OUTPUT
        fi

        rm -f "$f_eml"
done
rm -fr $DIR_TMP
