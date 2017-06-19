#!/bin/bash
if [ "$#" -eq 1 ]
then
	key=$1
else
	key="~/.ssh/id_rsa"	
fi

eval $(ssh-agent -s)
echo "Loading ssh key \"$key\""
ssh-add ~/.ssh/id_rsa
