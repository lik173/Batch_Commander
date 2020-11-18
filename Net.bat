@echo off
title Net
:home
echo Net
echo 1.ping
echo 2.start browser
echo 3.ipconfig
set /p net=~$
if %net%==1 goto ping
if %net%==2 goto netbrowse
if %net%==3 goto ip

:err
color 4
title NET-ERROR
echo %net% <--bad answer
pause
title Net
goto home

:ping
echo Type DNS or IP:
set /p ping=~$
ping %ping%
pause
cls
goto home

:netbrowse
cls
echo 1.IExplore
echo 2.Chrome
echo 3.browser.exe
set /p netbr=~$
if %netbr%==1 start iexplore.exe
if %netbr%==2 start chrome.exe
if %netbr%==3 start browser.exe
cls
goto home

:ip
echo IPCONFIG
cls
ipconfig
pause
cls
goto home