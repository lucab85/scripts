#!/bin/bash
if [ "$#" -ne 1 ]
then
	echo "Usage: $0 e-mail/gpg-id"
	exit 1
fi
gpg --export --armor $1 > $1_public.asc
gpg --export-secret-key --armor $1 > $1_private.key
gpg --fingerprint > $1_fingerprint.txt
gpg --export-ownertrust > $1_ownertrust.txt
