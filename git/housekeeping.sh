#!/bin/bash

if [ "$#" -ne 1 ]
then
	echo "Usage: $0 FOLDER"
	exit 1
fi

FOLDER=$1

cd $FOLDER
echo "Pre ----------------"
du -hs * | sort -h
echo "--------------------"

for dir in $(ls)
do
	echo "Processing $dir"
	cd $dir
	git checkout master
	git pull
	git push
	git gc --aggressive
	cd ../
done

cd $FOLDER
echo "Post ---------------"
du -hs * | sort -h
echo "--------------------"
