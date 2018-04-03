awk '{ print "New-ADGroup -Name \"fs_"$0"_rw\" -GroupCategory Security -GroupScope Global"}' list.txt
awk '{ print "New-ADGroup -Name \"fs_"$0"_r\" -GroupCategory Security -GroupScope Global"}' list.txt
