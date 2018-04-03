 awk '{ print "New-SmbShare -name \""$0"\" -Path \"D:\\"$0"\" -FullAccess \"DOMAIN.local\\fs_"$0"_rw\" -ReadAccess \"DOMAIN.local\\fs_"$0"_r\""}' list.txt
