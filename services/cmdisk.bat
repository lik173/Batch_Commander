@echo off
:main
echo Disk adventures
echo 1.CD (you must type every directory name)
echo 2.Go to standart folders

set /p choice=~$
if %choice%==1 goto cd
if %choice%==2 goto st

:err
color 4
echo ERROR!
pause
cls
color 7
goto main

:st
echo 1.User
echo 2.Windows
echo 3.System32
echo 4.Roaming AppData
echo 5.Local AppData
echo 6.Local Low  AppData
set /p st=~$
if %st%==1 cd %USERPROFILE%
if %st%==2 cd C:/Windows
if %st%==3 cd C:/Windows/System32
if %st%==4 cd %APPDATA%
if %st%==5 cd %LOCALAPPDATA%
if %st%==6 cd %APPDATA%/LocalLow
dir
pause
goto main
:cd
echo To exit from this press CTRL+C or close cmd
echo If disk missed you will de in Batch_Commander folder
echo Enter your disk(A-Z):
set /p vol=~$
cd %vol%:\
dir
echo Folder:
set /p dir=~$
pause
cls
cd %dir%
dir
echo Folder:
set /p dir2=~$
pause
cls
cd %dir2%
dir
echo Folder:
set /p dir3=~$
pause
cls
cd %dir3%
dir
echo Folder:
set /p dir4=~$
pause
cls
cd %dir4%
dir
echo Folder:
set /p dir5=~$
pause
cls
cd %dir5%
dir
echo Folder:
set /p dir6=~$
pause
cls
cd %dir6%
dir
echo Folder:
set /p dir7=~$
pause
cls
cd %dir7%
dir
echo Folder:
set /p dir8=~$
pause
cls
cd %dir8%
dir
echo Folder:
set /p dir9=~$
pause
cls
cd %dir9%
dir
echo Folder:
set /p dir10=~$
pause
cls
cd %dir10%
dir
echo Folder:
set /p dir11=~$
pause
cls
cd %dir11%
dir
echo Folder:
set /p dir12=~$
pause
cls
cd %dir12%


