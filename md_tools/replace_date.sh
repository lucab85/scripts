#!/bin/bash

TODAY=$(date +"%Y-%m-%d")

if [ "$#" -eq 1 ]
then
    FILELIST=$(cat $1)
else
	FILELIST=$(git status| grep "modified: " | sed -e 's/modified://g' -e 's/new file://g')
fi

for file in $FILELIST
do
	sed -i "s/{# *wf_updated_on: *[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9].*#}/{# wf_updated_on: $TODAY #}/g" $file
done
