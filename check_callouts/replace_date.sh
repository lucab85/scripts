#!/bin/bash

for file in `git status| grep "modified: " | sed -e 's/modified://g' -e 's/new file://g'`
do
	sed -i 's/wf_updated_on: [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]/wf_updated_on: 2017-07-14/g' $file
done
