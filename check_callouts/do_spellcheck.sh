#!/bin/bash

if [ "$#" -ne 1 ]
then
	echo "ENGLISH spellcheck"
	lang="en"
else
	lang=$1
fi


for f in *.md; do aspell --lang $lang check $f; done
for f in *.yaml; do aspell --lang $lang check $f; done
