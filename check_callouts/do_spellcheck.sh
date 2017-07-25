#!/bin/bash

if [ "$#" -ne 1 ]
then
	echo "ENGLISH spellcheck"
	lang="en"
else
	lang=$1
fi

for f in $(find . -name '*.md' -or -name '*.yaml' | grep -v -e './updates' -e './showcase' -e 'events')
	do
	
		aspell --lang $lang check $f
		
	done
