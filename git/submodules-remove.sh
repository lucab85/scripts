#!/bin/bash
if [ "$#" -ne 1 ]
then
	echo "Usage: $0 SUBMODULE"
	exit 1
fi

git submodule de init -f -- "$1"
rm -fr .git/modules/"$1"
git rm -f "$1"
