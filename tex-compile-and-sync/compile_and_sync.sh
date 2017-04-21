#!/bin/bash

WORKDIR="."
DROPBOX_LOCAL_DIR="$WORKDIR/output"
OUTPUT_FILE_ZIP="zip-output.zip"

source scripts/config.sh

cd $WORKDIR
echo "1. compile tex -> pdf"
for i in "./"*.tex
do
	echo "$i"
	FILENAME=`echo "$i" | cut -d'.' -f1`
	if [ -f "$DROPBOX_LOCAL_DIR/$FILENAME.pdf" ]; then
		rm -v "$DROPBOX_LOCAL_DIR/$FILENAME.pdf"
	fi
	if [ -f "$NAME.pdf" ]; then
		rm -v "$NAME.pdf"
	fi
	xelatex "$i" > /dev/null
	if [ $? -ne 0 ]; then
		echo "error: $?"
	fi
done
echo "2. cleaning"
rm "./"*.aux "./"*.out "./"*.log

echo "3. PDF copy"
mv -v *.pdf "$DROPBOX_LOCAL_DIR/"

echo "4. ZIP"
rm "fonts"
if [ -f "$DROPBOX_LOCAL_DIR/$OUTPUT_FILE_ZIP" ]; then
	rm -v "$DROPBOX_LOCAL_DIR/$OUTPUT_FILE_ZIP"
fi
zip -r "$DROPBOX_LOCAL_DIR/$OUTPUT_FILE_ZIP" $WORKDIR
if [ $? -ne 0 ]; then
	echo "error: $?"
fi
ln -s ../fonts "fonts"
ls -la $DROPBOX_LOCAL_DIR

echo "5. Dropbox sync"
cd scripts/
#./sync.sh
date
