#!/bin/bash

if [ "$#" -ne 1 ] && [ "$#" -ne 2 ]; then
	echo "Usage: $0 <filelist> [lang]"
	exit 1
fi
if [ "$#" -eq 2 ]; then
	filelist=$(cat $1 | grep -e '.md' -e '.yaml')
	lang=$2
fi
if [ "$#" -eq 1 ]; then
	filelist=$(find . -name '*.md' -or -name '*.yaml' | grep -v -e './updates' -e './showcase' -e 'events')
	lang="en"
fi

echo "LANG: $lang"

for f in $filelist
	do
	
		aspell --lang $lang --html-skip="script,style,img,svg" check $f
		
	done
