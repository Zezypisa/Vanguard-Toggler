@echo OFF
:NeutralStartup
cls
title Program Toggler
echo Program Toggler created by Zezypisa
echo Make sure to run this with Administrator, or it will not work
set /p select=What program would you like to use? (eadesktop \ valorant \ steam \ exit): 
if "%select%" == "eadesktop" goto EADesktopStartup
if "%select%" == "valorant" goto ValorantStartup
if "%select%" == "steam" goto SteamStartup
if "%select%" == "exit" exit
echo Not a valid option. (eadesktop \ valorant \ steam \ exit)
pause
goto NeutralStartup

::EADESKTOP

:EADesktopStartup
title EA background service Toggler
goto EADesktopHome

:EADesktopHome
cls
set /p select=Would you want to stop or start EA background service? (start \ stop \ display \ exit): 
if "%select%" == "start" goto EADesktopStart
if "%select%" == "stop" goto EADesktopStop
if "%select%" == "display" goto EADesktopDisplay
if "%select%" == "exit" exit
echo Not a valid option. (start \ stop \ display \ exit)
pause
goto EADesktopHome

:EADesktopStart
	sc config "eabackgroundservice" start=demand
	sc start "eabackgroundservice"
	goto RestartPrompt
:EADesktopStop
	sc config "eabackgroundservice" start=disabled
	sc stop "eabackgroundservice"
	goto RestartPrompt
:EADesktopDisplay
	sc query "eabackgroundservice"
	pause
	goto EADesktopHome

::VALORANT

:ValorantStartup
title Vanguard Toggler
goto ValorantHome

:ValorantHome
cls
set /p select=Would you want to stop or start vanguard? (start \ stop \ display \ exit): 
if "%select%" == "start" goto ValorantStart
if "%select%" == "stop" goto ValorantStop
if "%select%" == "display" goto ValorantDisplay
if "%select%" == "exit" exit
echo Not a valid option. (start \ stop \ display \ exit)
pause
goto ValorantHome

:ValorantStart
	sc config "vgk" start=system
	sc config "vgc" start=demand
	sc start "vgk"
	sc start "vgc"
	goto RestartPrompt
:ValorantStop
	sc config "vgk" start=disabled 
	sc config "vgc" start=disabled
	sc stop "vgk"
	sc stop "vgc"
	goto RestartPrompt
:ValorantDisplay
	sc query "vgk"
	sc query "vgc"
	pause
	goto ValorantHome

::STEAM

:SteamStartup
title Steam Client Sercice Toggler
goto SteamHome

:SteamHome
cls
set /p select=Would you want to stop or start steam client service? (start \ stop \ display \ exit): 
if "%select%" == "start" goto SteamStart
if "%select%" == "stop" goto SteamStop
if "%select%" == "display" goto SteamDisplay
if "%select%" == "exit" exit
echo Not a valid option. (start \ stop \ display \ exit)
pause
goto SteamHome

:SteamStart
	sc config "Steam Client Service start"=demand
	sc start "Steam Client Service"
	goto RestartPrompt
:SteamStop
	sc config "Steam Client Service start"=disabled
	sc stop "Steam Client Service"
	goto RestartPrompt
:SteamDisplay
	sc query "Steam Client Service"
	pause
	goto SteamHome

::ENDPROMPT

:RestartPrompt
set /p select=What would you like to do now? (shutdown \ restart \ nothing): 
if "%select%" =="shutdown" (
	shutdown /p
	exit
)
if "%select%" =="restart" (
	shutdown /r /t 0 /f
	exit
)
if "%select%" =="nothing" (
	exit
)
echo Not a valid option. (shutdown \ restart \ nothing)
pause
goto RestartPrompt
