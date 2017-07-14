#!/bin/bash

if [ "$#" -ne 1 ]
then
	echo "Usage: $0 subdir of src/content/"
	exit 1
fi


array=( "à" "è" "é" "ì" "ò" "ù" "\." "\," "\;" "\!" "\-" "\:")

for file in `find src/content/$1/ -name "*.md"`; do
	for c in {a..z} {0..9} {A..Z} "${array[@]}"; do

	  sed -i "s/$c <code>/$c \`/g" $file
	  sed -i "s/$c<code>/$c\`/g" $file
	  
	  sed -i "s/<\/code> $c/\` $c/g" $file
	  sed -i "s/<\/code>$c/\`$c/g" $file
	done
	
done
