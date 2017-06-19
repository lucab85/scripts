#!/bin/bash
if [ "$#" -ne 1 ]
then
	echo "Usage: $0 \"ssh-ed25519 fingerprint comment\""
	exit 1
fi

if [! -d "~/.ssh" ]; then
	mkdir -pv ~/.ssh
	chmod -v 700 ~/.ssh
fi
echo $1 >>  ~/.ssh/authorized_keys
chmod -v 600 ~/.ssh/*
