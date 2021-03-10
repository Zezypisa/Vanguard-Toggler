@echo OFF
title Vanguard Toggler
cls
:home
cls
echo Vanguard Toggler created by Zezypisa
echo Make sure to run this with Administrator, or it will not work
set /p select=Would you want to stop or start vanguard? (start \ stop \ display \ exit): 
if "%select%" == "start" goto startVG
if "%select%" == "stop" goto stopVG
if "%select%" == "display" goto displayVG
if "%select%" == "exit" exit
echo Not a valid option. (start \ stop \ display \ exit)
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
:displayVG
	sc query vgk
	sc query vgc
	pause
	goto home

:restartprompt
set /p select=Would you like to shutdown now? (yes \ no): 
if %select%==yes (
	echo Ok, Shutting down
	shutdown /p
	exit
)
if %select%==no (
	echo Ok, Exiting now
	exit
)
echo Not a valid option. (yes \ no)
pause
goto restartprompt
