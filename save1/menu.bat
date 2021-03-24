@echo off
:start
cls

rem menu zapisu ca³kiem proste

echo do you want to start a new game?
echo               [Y/N]

rem zacz¹æ now¹ gre czy kontynuowaæ star¹?

set /p startnew=

if %startnew%==y goto :startnewgame
if %startnew%==Y goto :startnewgame

if %startnew%==n goto :resumegame
if %startnew%==N goto :resumegame

:startnewgame
cls
echo what's your name?

set /p name=

rem ¿eby missclick nie zrobi³ z ciebie debila

echo so your name is %name%, right?
echo               [Y/N]

set /p confirmname=

if %confirmname%==y goto :gudname
if %confirmname%==Y goto :gudname

if %confirmname%==N goto :startnewgame
if %confirmname%==n goto :startnewgame

:gudname
cls
echo that's a great name! 
timeout /t 1 /nobreak > nul
echo %name% > name.txt
echo i saved it.
timeout /t 1 /nobreak > nul

echo let's start the game then, %name%
cd lvl1
call lvl1\enemy1