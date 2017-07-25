#!/bin/bash

TODAY=$(date +"%Y-%m-%d")
#FILELIST=$(cat stub.txt)
FILELIST=$(git status| grep "modified: " | sed -e 's/modified://g' -e 's/new file://g')


for file in $FILELIST
do
	sed -i "s/wf_updated_on: [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]/wf_updated_on: $TODAY/g" $file
	sed -i "s/wf_updated_on:[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]/wf_updated_on: $TODAY/g" $file
done
