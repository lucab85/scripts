# Extract PDF attachments from MSG file

Bash script to extract any PDF attachment from an MSG email.

The script follow this steps:

1. Convert MSG to EML format using [MSGConvert](http://www.matijs.net/software/msgconv/) utility
1. Extract any attachments from EML file using [ripMIME](http://www.pldaniels.com/ripmime/) utility
1. Check PDF for corruption using [Poppler](https://poppler.freedesktop.org/) utility


## Setup on Debian/Ubuntu

    apt-get install libemail-outlook-message-perl
    apt-get install ripmime
    apt-get install poppler-utils

## Usage

    ./msg2pdf.sh
