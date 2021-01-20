#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Usage: $0 <commit-id>"
	exit 1
fi

TODAY=$(date +"%Y%m%d")
FILELIST="filelist.txt"
EXCLUDELIST="excludelist.txt"
#BRANCH="typo"
BRANCH=$TODAY
LANGUAGE="en"

i=0
echo "$i. Fetch master \"FILELIST\""
git pull upstream master
i=$((i+1))

echo "$i. Branch Status"
git branch
i=$((i+1))

echo "$i. Create branch \"$BRANCH\""
git checkout -b $BRANCH
i=$((i+1))

echo "$i. Create filelist"
git diff $1 HEAD --name-only > $FILELIST
i=$((i+1))

echo "$i. Exclude filelist"
if [ -e $EXCLUDELIST ]; then
	temp_file=$(mktemp)
	mv -v $FILELIST $temp_file
	grep -v -f $EXCLUDELIST $temp_file > $FILELIST
fi

echo "$i. View filelist"
cat $FILELIST
i=$((i+1))

echo "$i. Do spellcheck"
/home/lberton/prj/github/scripts/md_tools/do_spellcheck.sh $FILELIST $LANGUAGE
i=$((i+1))

echo "$i. Delete filelist"
rm -frv $FILELIST
i=$((i+1))

#echo "$i. Push branch to origin"
#git push --set-upstream origin $BRANCH
#i=$((i+1))

echo "$i. Branch Status"
git branch
i=$((i+1))

