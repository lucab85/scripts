
set cmd7z="c:\Program Files\7-Zip\7z.exe"
set opt7z=a -t7z -mx9
set out7z="PST.7z"
set datetimef=%date:~-4%%date:~3,2%%date:~0,2%
set mydir="C:\Bills\%datetimef%"
set d_script="C:\Bills\scripts"
set box="c:\box"
set pst="*.pst"
set pst_txt="PST.TXT"
set cmdoutlook="C:\Program Files (x86)\Microsoft Office\Office12\OUTLOOK.EXE"

mkdir "%mydir%"

cd %box%
move %pst% "%mydir%"

cd "%mydir%"
%cmd7z% %opt7z% %out7z% %pst%

dir /s /b /o:gn %pst% > %pst_txt%
cmd.exe /c call cscript d_script\add2outlook.vbs %pst_txt%

%cmdoutlook%
