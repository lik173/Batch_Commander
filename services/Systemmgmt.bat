@echo off
cls
color f4
:att
cls
echo Attention!
echo This script can damage your system,files and other
goto home
:home
echo 1.Shutdown (time/now)
echo 2.Remove TEMP
echo 3.Disc adventures
echo 4.
set /p hm=~$
if %hm%==1 goto sh
if %hm%==2 goto deltemp
if %hm%==3 start Cmdisk.bat
if %hm%==4 goto home

:err
echo ERROR!
echo %hm% incorrect choice!
pause
goto att

:deltemp
echo Delete TEMP folder(s)?(y/n)
set /p ins=~$
if %ins%==y goto startdel
if %ins%==n goto att
:startdel
echo Ctrl+C to cancel
pause
DEL /F /S /Q /A "C:\Windows\Temp\*"
DEL /F /S /Q /A "C:\Temp\*"
DEL /F /S /Q /A "%USERPROFILE%\AppData\Local\Temp\*"
cd %USERPROFILE%\AppData\Local\Temp\\AppData\Local\Temp
rmdir /s /q %USERPROFILE%\AppData\Local\Temp
pause
cls
echo Deleted!
goto att

:sh
echo Enter time before shutdown your PC:
set /p time=~$
shutdown -s -T %time%
echo Now type 0 to cancel
echo 1 to proceed
set /p shtdwn=~$
if %shtdwn%==0 shutdown -a
if %shtdwn%==1 goto att