@echo off
title Launched-Batch Commander
:home
color 7
cls
echo 1.Install
echo 2.Delete Temp Folder
set /p answer=~$
if %answer%==1 goto install
if %answer%==2 goto deltemp

:err
color 4
echo ERROR!
echo %answer% incorrect command!
pause
goto home
:install
cls
echo python
echo npp (Notepad++)
set /p ins=~$
if %ins%==python start pinstall.exe
if %ins%==npp start nppinstaller.exe

:err
color 4
echo ERROR!
echo %answer% incorrect command!
pause
goto home

:deltemp
echo Delete TEMP folder(s)?(y/n)
set /p ins=~$
if %ins%==y goto startdel
if %ins%==n goto home
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
goto home