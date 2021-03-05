@echo OFF
title Vanguard Toggler
cls
:home
cls
echo Vanguard Toggler created by Zezypisa
set /p select=Would you want to stop or start vanguard? 
if "%select%" == "start" goto startVG
if "%select%" == "stop" goto stopVG
if "%select%" == "exit" exit
echo Not a valid option. start \ stop \ exit
pause
goto home

:startVG
	sc config vgk start=system
	sc config vgc start=demand
	goto restartprompt
:stopVG
	sc config vgk start=disabled 
	sc config vgc start=disabled
	goto restartprompt

:restartprompt
set /p select=Would you like to shut down now? 
if %select%==yes (
	echo Ok, shutting down
	shutdown /p
)
if %select%==no (
	echo Ok, Exiting now
	pause
	exit
)
echo Not a valid option. yes \ no
pause
goto restartprompt
