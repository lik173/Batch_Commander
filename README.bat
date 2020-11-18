@echo off
echo Just tool to start some apps and other 
echo With creating repository i create new changes! 
echo Im add RU language 
echo Added Command_Executor.bat
echo Utils updated
echo You can contact with me: contact.lik173@mail.ru 
echo You can modify this files 
echo Share some batch scripts to me (not DDoS please)
pause
set /p yn=Want to see repository on GitHub?(y/n)

if %yn%==y start iexplore.exe https://github.com/lik173/Batch_Commander
if %yn%==n goto end

:end
echo Now press any key to go START.bat
pause
start START.bat
