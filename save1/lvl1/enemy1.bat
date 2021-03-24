@echo off
:start
cls

rem TEN KOD SSIE ALE NIE UMIEM LEPIEJ GO NAPISAÆ POMOCY

cd ..

rem to jest chyba najgorszy sposób by dowiedzieæ sie ile hp i ataku ma przeciwnik ale na razie wystarczy

:enemydata
set /p enemyhealth=<data\enemydata\testhealth.txt
set /p enemyattack=<data\enemydata\testattack.txt

rem HA PE

:playerdata
set /p level=<inv\level.txt

rem nie znam lepszego sposobu ale ten na razie wystarczy

if %level%==1 goto :1

rem bêde musia³ to zmieniæ ale dodam max 20 poziomów na razie... mam nadzieje

:1
set /p health=<data\leveldata\health1.txt
goto :choice

rem A WILD TEST APPEARED

:choice
echo test enemy wants to fight with you!
timeout /t 1 > nul
echo what will you do?
echo [1 fight] [2 heal] [3 magic] [4 items] [5 run away]

rem przynajmniej dzia³a lol

set /p action=

if %action%==1 goto :fight
if %action%==2 goto :healing
if %action%==3 goto :magic
if %action%==4 goto :items
if %action%==5 goto :flee

rem nienawidze tego koduuuuu

:fight
cls
cd ..

rem ten kod jest do dupy ale mam nadzieje wystarczy

set /p weapon=<inv\weapon.txt

if %weapon%==0 goto :fists
if %weapon%==1 goto :sword
if %weapon%==2 goto :gun

rem i tak na ka¿d¹ broñ... musze znaleŸæ lepszy sposób

:fists
set /p attack=<data\weapondata\fistsdata.txt
goto :attack

:sword
set /p attack=<data\weapondata\sworddata.txt
goto :attack

:gun
set /p attack=<data\weapondata\gundata.txt
goto :attack

rem tu ma byæ kod walki ale na razie tego nie zrobi³em
rem EDIT: w³aœnie to robie

:attack

rem interfejs walki, jedyne co umiem programowaæ lol

echo HP:%health% ATTACK:%attack%
echo ENEMY HEALTH:%enemyhealth% ENEMY ATTACK:%enemyattack%
timeout /t 5 