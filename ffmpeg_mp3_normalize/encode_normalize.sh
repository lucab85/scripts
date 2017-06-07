#!/bin/bash
if [ "$#" -ne 1 ]
then
	echo "Usage: $0 filename"
	exit 1
fi
/usr/local/bin/ffmpeg-normalize -r mp3 -e "-b:a 64k" "$1"
