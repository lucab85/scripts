<<<<<<< HEAD
# GPG export script
A simple bash script to export public, private and fingerprint of a GPG identity.

Usage:
`./gpg_export e-mail/gpg-id`

Require a working gpg with a key already generated.

## Import

Import only secret key because contains also the public key and ownertrust

gpg --import key_private.key
gpg --import-ownertrust key_ownertrust.txt
=======
# Gpg export

A simple bash script to export public, private and fingerprint of a GPG identity.
Usage: ./gpg_export e-mail/gpg-id

Require a working gpg with a key already generated.
>>>>>>> 8e1d5ec026c8d525366d3b67944a1869d84eda21
