#!/bin/bash

for file in `git status| grep "modified: " | sed 's/modified://g'`
do
	sed -i 's/wf_updated_on: [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]/wf_updated_on: 2017-07-12/g' $file
done
