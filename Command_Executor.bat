@echo off
title Command Executor
:home
cls
echo Command Executor
echo 1.Batch Commander commands
echo 2.Windows commands
echo 3.Hotkeys
set /p comm=~$

if %comm%==1 goto bccomms
if %comm%==2 goto wincomms
if %comm%==3 goto list
if %comm%==e exit
if %comm%==p pause
if %comm%==cl cls
if %comm%==l goto list

cls
echo R-retry,E-exit
set /p re=~$
if %re%==r goto home
if %re%==e exit
:comminc
color 4
echo Incorrect symbol!
echo Please type correct word/letter(s)
pause
color 7
cls
goto menu

:bccomms
set /p bc=~$
echo home (back)
if %bc%==devsite start iexplore.exe https://lik173.github.com/
if %bc%==devprofile start iexplore.exe https://github.com/lik173
if %bc%==home goto home
if %bc%==readme start README.bat
if %bc%==list goto list
if %bc%==ghrepos start iexplore.exe https://github.com/lik173/Batch_Commander
if %comm%==e exit
if %comm%==p pause
if %comm%==cl cls
if %comm%==l goto list
:err
cls
color 4
echo ERROR
echo %bc% isn't allowed command
pause 
goto post_errbc
:post_errbc
color 7
cls
goto bccomms

:hotkeys
echo p-pause
echo l-list(You will redirect to Batch Commander commands)
echo e-exit
echo cl-clear


:list
echo devsite
echo devprofile
echo ghrepos
echo readme
echo list
echo home
 goto bccomms

:wincomms
title CMD
set /p command=~$
%command%
pause
title Command Executor
goto home
