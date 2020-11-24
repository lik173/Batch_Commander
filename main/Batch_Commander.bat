@echo off
title Launched-Batch Commander
color 7
cls
:launch

echo Enter name:
set /p username=~$
echo Enter PC name:
set /p pcname=~$
goto help
title Batch Commander
:help
cls
echo clear
echo help
echo color
echo exit
echo system
echo info
echo perform (perform commands)
echo utils
echo settings
goto menu

:Menu

set /p answer= %username%@%pcname%:~$
if %answer%==help goto help
if %answer%==windir goto windir
if %answer%==exit goto Exit
if %answer%==clear goto clear
if %answer%==color goto color
if %answer%==system goto system
if %answer%==info goto info
if %answer%==perform start Command_Executor.bat
if %answer%==settings goto settings
if %answer%==utils goto utils




:err
cls
color 4
echo ERROR
echo %answer% isn't allowed command
pause 

goto post_err

:post_err
color 7
goto help
:clear
cls
@echo off
color f
title Clearing...
pause
title Batch Commander
cls
goto help

:utils
cls
echo Utils Starting...
start Utils.bat
goto menu

rem ----------System--------------
:system
cls
echo SSA (Start System App)
echo ipconfig
echo windir
echo winver
echo back
set /p system=%username%@%pcname%:~$
if %system%==ssa goto ssa
if %system%==back goto help
if %system%==windir goto windir
if %system%==winver winver
if %system%==ipconfig goto ipconfig
goto err
:ssa
cls
echo Start System App
echo Program list:
echo CMD
echo Explorer
echo IE (Internet Explorer)
echo Taskmgr (Task Manager)
echo Regedit (Register editor)
echo back

set /p start=%username%@%pcname%:~$
if %start%==back goto system
if %start%==regedit goto help
if %start%==ie start iexplore.exe
if %start%==cmd start cmd.exe
if %startr%==explorer start explorer.exe
if %start%==taskmgr start taskmgr.exe
goto err

:dirs

:wininfo

:ipconfig
cls
ipconfig
pause
goto system

rem ---------End------------------
:color
cls
echo Change text color
echo Color list:
echo blue
echo green
echo cyan
echo red
echo purple
echo yellow
echo white
echo gray
echo light blue
echo Write color:
set /p color=%username%@%pcname%:~$
if %color%==blue color 1
if %color%==green color 2
if %color%==cyan color 3
if %color%==red color 4
if %color%==purple color 5
if %color%==yellow color 6
if %color%==white color f
if %color%==gray color 8
if %color%==light blue color 9
pause
echo Confirm?(y/n)
set /p confirmcol=%username%@%pcname%:~$

if %confirmcol%==y goto menu
if %confirmcol%==n goto clearcol

:clearcol
echo Clear color?(y/n)
set /p clearcol=%username%@%pcname%:~$

if %clearcol%==y color f
if %clearcol%==n goto menu

goto menu


:windir
cd C:/Windows
dir

goto menu

:info
echo Thanks for using this app!
echo In this app you can:
echo Start system programs
echo Customize text (color)
echo View WINDIR and TEMP
echo View your Windows version
echo View your IP configuration
pause
goto help

:Settings
echo Enter number:
echo 0.To menu
echo 1.Langs
echo 2.Program title

set /p sets=%username%@%pcname%:~$

if %sets%==0 goto help
if %sets%==1 goto langs
if %sets%==2 goto title

goto settings
:title
echo Something:
set /p title=%username%@%pcname%:~$
echo Processing...
pause
title %title%
goto Settings
:langs
echo Enter number:
echo 1.en
echo 2.ru(end of life)
set /p lang=%username%@%pcname%:~$

if %lang%==2 goto eofru
if %lang%==1 start Batch_Commander.bat
:eofru
cd ..
cd EndOfLife
start Batch_CommanderRU.bat
:Exit
pause
exit /b
