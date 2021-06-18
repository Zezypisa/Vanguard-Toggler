$host.UI.RawUI.WindowTitle = "Program Toggler Script"
Write-Host "Program Toggler verified safe, used, and created by Zezypisa"
Write-Host "Make sure to run this with Administrator, or it will not work"
$confirmation = Read-Host "What program would you like to use? [valorant\eadesktop\steam\exit]"
if ($confirmation -eq "valorant") {
    $confirmation = Read-Host "Would you want to stop or start vanguard? [start\stop\enable\disable\display]"
    if ($confirmation -eq "start") {
        cmd /c sc config "vgk" start=system
        cmd /c sc config "vgc" start=demand
		cmd /c sc start "vgk"
        cmd /c sc start "vgc"
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
        pause
        exit
    }
    if ($confirmation -eq "stop") {
        cmd /c sc config "vgk" start=disabled
        cmd /c sc config "vgc" start=disabled
		cmd /c sc stop "vgk"
		cmd /c sc stop "vgc"
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
        pause
        exit
    }
    if ($confirmation -eq "enable") {
        cmd /c sc config "vgk" start=system
        cmd /c sc config "vgc" start=demand
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
        pause
        exit
    }
    if ($confirmation -eq "disable") {
        cmd /c sc config "vgk" start=disabled
        cmd /c sc config "vgc" start=disabled
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
        pause
        exit
    }
    if ($confirmation -eq "display") {
        cmd /c sc query "vgk"
        cmd /c sc query "vgc"
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
        pause
        exit
    }
}
if ($confirmation -eq "eadesktop") {
    $confirmation = Read-Host "Would you want to stop or start EA background service? [start\stop\enable\disable\display]"
    if ($confirmation -eq "start") {
        cmd /c sc config "eabackgroundservice" start=demand
	    cmd /c sc start "eabackgroundservice"
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
        pause
        exit
    }
    if ($confirmation -eq "stop") {
        cmd /c sc config "eabackgroundservice" start=disabled
        cmd /c sc stop "eabackgroundservice"
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
        pause
        exit
    }
    if ($confirmation -eq "enable") {
        cmd /c cmd /c sc config "eabackgroundservice" start=demand
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
        pause
        exit
    }
    if ($confirmation -eq "disable") {
        cmd /c cmd /c sc config "eabackgroundservice" start=disabled
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
        pause
        exit
    }
    if ($confirmation -eq "display") {
        cmd /c sc query "eabackgroundservice"
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
        pause
        exit
    }
}
if ($confirmation -eq "steam") {
    $confirmation = Read-Host "Would you want to stop or start steam client service? [start\stop\enable\disable\display]"
    if ($confirmation -eq "start") {
        cmd /c sc config "Steam Client Service" start=demand
        cmd /c sc start "Steam Client Service"
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
        pause
        exit
    }
    if ($confirmation -eq "stop") {
        cmd /c sc config "Steam Client Service" start=disabled
        cmd /c sc stop "Steam Client Service"
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
        pause
        exit
    }
    if ($confirmation -eq "enable") {
        cmd /c sc config "Steam Client Service" start=demand
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
        pause
        exit
    }
    if ($confirmation -eq "disable") {
        cmd /c sc config "Steam Client Service" start=disabled
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
        pause
        exit
    }
    if ($confirmation -eq "display") {
        cmd /c sc query "Steam Client Service"
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
        pause
        exit
    }
}
if ($confirmation = "exit") {
    pause
    exit
}
