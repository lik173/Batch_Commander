@echo off
title START
color 7
cls
echo 1.README
echo 2.Batch Commander
echo 3.Batch CommanderRU
echo 4.Utils
echo 5.Command Executor
echo 6.Net
echo 7.System Management
set /p answer=~$
if %answer%==1 start README.bat
if %answer%==2 goto en
if %answer%==3 goto ru
if %answer%==4 goto ut
if %answer%==5 goto per
if %answer%==6 goto net
if %answer%==7 goto sersys

:en
cd main
start Batch_Commander.bat
:ru
cd EndOfLife
start Batch_CommanderRU.bat
:ut
cd main
start Utils.bat
:per
cd main
start Command_Executor.bat
:net
cd services
start Net.bat
:sersys
cd services
start Systemmgmt.bat