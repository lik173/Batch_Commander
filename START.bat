@echo off
title START
color 7
cls
echo 1.README
echo 2.Batch Commander
echo 3.Batch CommanderRU
echo 4.Utils
set /p answer=~$
if %answer%==1 start README.bat
if %answer%==2 start Batch_Commander.bat
if %answer%==3 start Batch_CommanderRU.bat
if %answer%==4 start Utils.bat