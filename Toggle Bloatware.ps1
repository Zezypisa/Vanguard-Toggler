function Exit-Prompt {
    $confirmation = Read-Host "Would you like to shutdown, restart, or do nothing [shutdown\restart\nothing]"
            if ($confirmation -eq "shutdown") {
                Stop-Computer -ComputerName localhost
                exit
            }
            if ($confirmation -eq "restart") {
                Restart-Computer -ComputerName localhost
                exit
            }
            if ($confirmation -eq "nothing") {
                exit
            }
}
#preping to use these, not yet though cuz lazy :kekw:
function Start-Service {}
function Stop-Service {}
function Enable-Service {}
function Disable-Service {}
function Display-Service {}

$host.UI.RawUI.WindowTitle = "Program Toggler Script"
#A Program Toggler tool for toggling mulitple annoying programs like EA Desktop, Vanguard, and others.
Write-Host "Program Toggler verified safe, used, and created by Zezypisa."
Write-Host "Make sure to run this with Administrator, or it will not work."
Write-Host "Use this at your own risk."
Write-Host "Note: Certian programs will not open when services are disabled."
$confirmation = Read-Host "What program would you like to use? [valorant\eadesktop\steam\chromeupdate\edgeupdate\asusupdate\exit]"
if ($confirmation -eq "valorant") {
    $confirmation = Read-Host "Would you want to stop or start vanguard? [start\stop\enable\disable\display]"
    if ($confirmation -eq "start") {
        cmd /c sc config "vgk" start=system
        cmd /c sc start "vgk"
        cmd /c sc config "vgc" start=demand
        cmd /c sc start "vgc"
        Exit-Prompt
        pause
        exit
    }
    if ($confirmation -eq "stop") {
        cmd /c sc config "vgk" start=disabled
		cmd /c sc stop "vgk"
        cmd /c sc config "vgc" start=disabled
		cmd /c sc stop "vgc"
        Exit-Prompt
        pause
        exit
    }
    if ($confirmation -eq "enable") {
        cmd /c sc config "vgk" start=system
        cmd /c sc config "vgc" start=demand
        Exit-Prompt
        pause
        exit
    }
    if ($confirmation -eq "disable") {
        cmd /c sc config "vgk" start=disabled
        cmd /c sc config "vgc" start=disabled
        Exit-Prompt
        pause
        exit
    }
    if ($confirmation -eq "display") {
        cmd /c sc query "vgk"
        cmd /c sc query "vgc"
        Exit-Prompt
        pause
        exit
    }
}
if ($confirmation -eq "eadesktop") {
    $confirmation = Read-Host "Would you want to stop or start EA background service? [start\stop\enable\disable\display]"
    if ($confirmation -eq "start") {
        cmd /c sc config "eabackgroundservice" start=demand
	    cmd /c sc start "eabackgroundservice"
        Exit-Prompt
        pause
        exit
    }
    if ($confirmation -eq "stop") {
        cmd /c sc config "eabackgroundservice" start=disabled
        cmd /c sc stop "eabackgroundservice"
        Exit-Prompt
        pause
        exit
    }
    if ($confirmation -eq "enable") {
        cmd /c cmd /c sc config "eabackgroundservice" start=demand
        Exit-Prompt
        pause
        exit
    }
    if ($confirmation -eq "disable") {
        cmd /c cmd /c sc config "eabackgroundservice" start=disabled
        Exit-Prompt
        pause
        exit
    }
    if ($confirmation -eq "display") {
        cmd /c sc query "eabackgroundservice"
        Exit-Prompt
        pause
        exit
    }
}
if ($confirmation -eq "steam") {
    $confirmation = Read-Host "Would you want to stop or start steam client service? [start\stop\enable\disable\display]"
    if ($confirmation -eq "start") {
        cmd /c sc config "Steam Client Service" start=demand
        cmd /c sc start "Steam Client Service"
        Exit-Prompt
        pause
        exit
    }
    if ($confirmation -eq "stop") {
        cmd /c sc config "Steam Client Service" start=disabled
        cmd /c sc stop "Steam Client Service"
        Exit-Prompt
        pause
        exit
    }
    if ($confirmation -eq "enable") {
        cmd /c sc config "Steam Client Service" start=demand
        Exit-Prompt
        pause
        exit
    }
    if ($confirmation -eq "disable") {
        cmd /c sc config "Steam Client Service" start=disabled
        Exit-Prompt
        pause
        exit
    }
    if ($confirmation -eq "display") {
        cmd /c sc query "Steam Client Service"
        Exit-Prompt
        pause
        exit
    }
}
if ($confirmation -eq "chromeupdate") {
    $confirmation = Read-Host "Would you want to stop or start google update? [start\stop\enable\disable\display]"
    if ($confirmation -eq "start") {
        cmd /c sc config "GoogleChromeElevationService" start=demand
        cmd /c sc start "GoogleChromeElevationService"
        cmd /c sc config "gupdate" start=demand
        cmd /c sc start "gupdate"
        cmd /c sc config "gupdatem" start=demand
        cmd /c sc start "gupdatem"
        Exit-Prompt
        pause
        exit
    }
    if ($confirmation -eq "stop") {
        cmd /c sc config "GoogleChromeElevationService" start=disabled
        cmd /c sc stop "GoogleChromeElevationService"
        cmd /c sc config "gupdate" start=disabled
        cmd /c sc stop "gupdate"
        cmd /c sc config "gupdatem" start=disabled
        cmd /c sc stop "gupdatem"
        Exit-Prompt
        pause
        exit
    }
    if ($confirmation -eq "enable") {
        cmd /c sc config "GoogleChromeElevationService" start=demand
        cmd /c sc config "gupdate" start=demand
        cmd /c sc config "gupdatem" start=demand
        Exit-Prompt
        pause
        exit
    }
    if ($confirmation -eq "disable") {
        cmd /c sc config "GoogleChromeElevationService" start=disabled
        cmd /c sc config "gupdate" start=demand
        cmd /c sc config "gupdatem" start=demand
        Exit-Prompt
        pause
        exit
    }
    if ($confirmation -eq "display") {
        cmd /c sc query "GoogleChromeElevationService"
        cmd /c sc query "gupdate"
        cmd /c sc query "gupdatem"
        Exit-Prompt
        pause
        exit
    }
}
if ($confirmation -eq "edgeupdate") {
    $confirmation = Read-Host "Would you want to stop or start edge update? [start\stop\enable\disable\display]"
    if ($confirmation -eq "start") {
        cmd /c sc config "MicrosoftEdgeElevationService" start=demand
        cmd /c sc start "MicrosoftEdgeElevationService"
        cmd /c sc config "edgeupdate" start=demand
        cmd /c sc start "edgeupdate"
        cmd /c sc config "edgeupdatem" start=demand
        cmd /c sc start "edgeupdatem"
        Exit-Prompt
        pause
        exit
    }
    if ($confirmation -eq "stop") {
        cmd /c sc config "MicrosoftEdgeElevationService" start=disabled
        cmd /c sc stop "MicrosoftEdgeElevationService"
        cmd /c sc config "edgeupdate" start=disabled
        cmd /c sc stop "edgeupdate"
        cmd /c sc config "edgeupdatem" start=disabled
        cmd /c sc stop "edgeupdatem"
        Exit-Prompt
        pause
        exit
    }
    if ($confirmation -eq "enable") {
        cmd /c sc config "MicrosoftEdgeElevationService" start=demand
        cmd /c sc config "edgeupdate" start=demand
        cmd /c sc config "edgeupdatem" start=demand
        Exit-Prompt
        pause
        exit
    }
    if ($confirmation -eq "disable") {
        cmd /c sc config "MicrosoftEdgeElevationService" start=disabled
        cmd /c sc config "edgeupdate" start=demand
        cmd /c sc config "edgeupdatem" start=demand
        Exit-Prompt
        pause
        exit
    }
    if ($confirmation -eq "display") {
        cmd /c sc query "MicrosoftEdgeElevationService"
        cmd /c sc query "edgeupdate"
        cmd /c sc query "edgeupdatem"
        Exit-Prompt
        pause
        exit
    }
}
if ($confirmation -eq "asusupdate") {
    $confirmation = Read-Host "Would you want to stop or start ? [start\stop\enable\disable\display]"
    if ($confirmation -eq "start") {
        cmd /c sc config "asus" start=demand
        cmd /c sc start "asus"
        cmd /c sc config "asusm" start=demand
        cmd /c sc start "asusm"
        Exit-Prompt
        pause
        exit
    }
    if ($confirmation -eq "stop") {
        cmd /c sc config "asus" start=disabled
        cmd /c sc stop "asus"
        cmd /c sc config "asusm" start=disabled
        cmd /c sc stop "asusm"
        Exit-Prompt
        pause
        exit
    }
    if ($confirmation -eq "enable") {
        cmd /c sc config "asus" start=demand
        cmd /c sc config "asusm" start=demand
        Exit-Prompt
        pause
        exit
    }
    if ($confirmation -eq "disable") {
        cmd /c sc config "asus" start=disabled
        cmd /c sc config "asusm" start=disabled
        Exit-Prompt
        pause
        exit
    }
    if ($confirmation -eq "display") {
        cmd /c sc query "asus"
        cmd /c sc query "asusm"
        Exit-Prompt
        pause
        exit
    }
}
