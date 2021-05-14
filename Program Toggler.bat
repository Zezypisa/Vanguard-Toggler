@echo OFF
:NeutralStartup
cls
title Waiting for program
set /p select=What program would you like to use? (eadesktop \ valorant \ exit): 
if "%select%" == "eadesktop" goto EADesktopStartup
if "%select%" == "valorant" goto ValorantStartup
if "%select%" == "exit" exit
echo Not a valid option. (eadesktop \ valorant \ exit)
pause
goto NeutralStartup

::EADESKTOP

:EADesktopStartup
title EA background service Toggler
goto EADesktopHome

:EADesktopHome
cls
echo EA background service Toggler created by Zezypisa
echo Make sure to run this with Administrator, or it will not work
set /p select=Would you want to stop or start EA background service? (start \ stop \ display \ exit): 
if "%select%" == "start" goto EADesktopStart
if "%select%" == "stop" goto EADesktopStop
if "%select%" == "display" goto EADesktopDisplay
if "%select%" == "exit" exit
echo Not a valid option. (start \ stop \ display \ exit)
pause
goto EADesktopHome

:EADesktopStart
	sc config eabackgroundservice start=demand
	goto RestartPrompt
:EADesktopStop
	sc config eabackgroundservice start=disabled 
	goto RestartPrompt
:EADesktopDisplay
	sc query eabackgroundservice
	pause
	goto EADesktopHome

::VALORANT

:ValorantStartup
title Vanguard Toggler
goto ValorantHome

:ValorantHome
cls
echo Vanguard Toggler created by Zezypisa
echo Make sure to run this with Administrator, or it will not work
set /p select=Would you want to stop or start vanguard? (start \ stop \ display \ exit): 
if "%select%" == "start" goto ValorantStart
if "%select%" == "stop" goto ValorantStop
if "%select%" == "display" goto ValorantDisplay
if "%select%" == "exit" exit
echo Not a valid option. (start \ stop \ display \ exit)
pause
goto ValorantHome

:ValorantStart
	sc config vgk start=system
	sc config vgc start=demand
	goto RestartPrompt
:ValorantStop
	sc config vgk start=disabled 
	sc config vgc start=disabled
	goto RestartPrompt
:ValorantDisplay
	sc query vgk
	sc query vgc
	pause
	goto ValorantHome

::ENDPROMPT

:RestartPrompt
set /p select=What would you like to do now? (shutdown \ restart \ nothing): 
if "%select%" =="shutdown" (
	echo Ok, Shutting down now
	shutdown /p
	pause
	exit
)
if "%select%" =="restart" (
	echo Ok, Restarting now
	shutdown /r /t 0 /f
	pause
	exit
)
if "%select%" =="nothing" (
	echo Ok, Exiting now
	exit
)
echo Not a valid option. (shutdown \ restart \ nothing)
pause
goto RestartPrompt
