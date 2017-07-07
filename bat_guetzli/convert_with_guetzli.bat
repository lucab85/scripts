@echo off
if %1.==Sub. goto %2

SET EXT=.jpg

for /r %%f in (*.jpg) do call %0 Sub action %%~nf
goto end

:action
For /f "tokens=1-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
echo %mydate%_%mytime% Converting file %3.jpg
ren %3.jpg %3_original.jpg
REM TEST WITH COPY
REM copy %3_original.jpg %3.jpg
c:\guetzli.exe --quality 100 %3_original.jpg %3.jpg
REM echo Delete original %3
REM del %3_original.jpg

:end
