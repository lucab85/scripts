# Convert with Guetzli (JPEG encoder)

Bat script to convert all the jpg files in current directory with 
[Google Guetzli encoder](https://github.com/google/guetzli).

## Setup
1. Download the latest 
[Guetzli release](https://github.com/google/guetzli/releases) for Windows 
(`guetzli_windows_x86.exe` or `guetzli_windows_x86-64.exe` filename).
1. customize the script with the guetzli path (for example: `c:\guetzli.exe`)
1. customize the script with the quality of your preference (between 70 and 110). Default `100`.


## Usage

    ./convert_with_guetzli.bat

### sample output

    2017-07-07_1421 Converting file IMG_001.jpg
    2017-07-07_1457 Converting file IMG_002.jpg

### test
Tested in Windows 7 Pro 64bit and Google Guetzli v.1.0.1.
