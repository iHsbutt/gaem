@echo off
:start
cls

rem s t a n d a r d

echo THE GAEM
timeout /t 2 >nul
echo press any button to start the gaem
timeout /t -1 >nul

rem start gaemu 

echo select your save
echo save 1 save 2 save 3
set /p save=

if %save%==1 goto :save1
if %save%==2 goto :save2
if %save%==3 goto :save3

:save1 
cd save1
call menu.bat
timeout /t 1 /nobreak > null

:save2
cd save2
call menu.bat
timeout /t 1 /nobreak > null

:save3
cd save3
call menu.bat
timeout /t 1 /nobreak > null