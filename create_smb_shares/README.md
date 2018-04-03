# Generator of smb shares

Shell scripts to create shares via PowerShell 

## Setup

Create a share folders list (`list.txt`).

* `create_groups.sh` generate PowerShell to create AD Groups
* `create_mkdir.sh` generate batch to mkdir direcory
* `create_share.sh` generate PowerShell to create SMB Share


## Usage

```
./create_groups.sh > groups.ps1
./create_mkdir.sh > mkdir.bat
./create_share.sh > shares.ps1
```
