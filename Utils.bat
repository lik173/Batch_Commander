@echo off
title Utils
:home
color 7
cls
echo 1.Install
set /p answer=~$
if %answer%==1 goto install

:err
color 4
echo ERROR!
echo %answer% incorrect command!
pause
goto home
:install
echo python
echo npp (Notepad++)
set /p ins=~$
if %ins%==python start pinstall.msi
if %ins%==npp start nppinstaller.exe
