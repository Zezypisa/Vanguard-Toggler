$host.UI.RawUI.WindowTitle = "Program Toggler Script"
Write-Host "Program Toggler verified safe, used, and created by Zezypisa"
Write-Host "Make sure to run this with Administrator, or it will not work"
$confirmation = Read-Host "What program would you like to use? [valorant\eadesktop\steam\exit]"
if ($confirmation -eq "valorant") {
    $confirmation = Read-Host "Would you want to stop or start vanguard? [start\stop\enable\disable\display]"
    if ($confirmation -eq "start") {
        Start-Service -Name "vgk"
        Start-Service -Name "vgc"
        Set-Service -Name "vgk" -StartupType Automatic
        Set-Service -Name "vgc" -StartupType Manual
        pause
    }
    if ($confirmation -eq "stop") {
        Stop-Service -Name "vgk" -force
        Stop-Service -Name "vgc" -force
        Set-Service -Name "vgk" -StartupType Disabled
        Set-Service -Name "vgc" -StartupType Disabled
        pause
    }
    if ($confirmation -eq "enable") {
        Set-Service -Name "vgk" -StartupType Automatic
        Set-Service -Name "vgc" -StartupType Manual
        pause
    }
    if ($confirmation -eq "disable") {
        Set-Service -Name "vgk" -StartupType Disabled
        Set-Service -Name "vgc" -StartupType Disabled
        pause
    }
    if ($confirmation -eq "display") {
        Get-Service -Name "vgk"
        Get-Service -Name "vgc"
        pause
    }
}
if ($confirmation -eq "eadesktop") {
    $confirmation = Read-Host "Would you want to stop or start EA background service? [start\stop\enable\disable\display]"
    if ($confirmation -eq "start") {
        Start-Service -Name "eabackgroundservice"
        Set-Service -Name "eabackgroundservice" -StartupType Manual
        pause
    }
    if ($confirmation -eq "stop") {
        Stop-Service -Name "eabackgroundservice" -force
        Set-Service -Name "eabackgroundservice" -StartupType Disabled
        pause
    }
    if ($confirmation -eq "enable") {
        Set-Service -Name "eabackgroundservice" -StartupType Manual
        pause
    }
    if ($confirmation -eq "disable") {
        Set-Service -Name "eabackgroundservice" -StartupType Disabled
        pause
    }
    if ($confirmation -eq "display") {
        Get-Service -Name "eabackgroundservice"
        pause
    }
}
if ($confirmation -eq "steam") {
    $confirmation = Read-Host "Would you want to stop or start steam client service? [start\stop\enable\disable\display]"
    if ($confirmation -eq "start") {
        Start-Service -Name "Steam Client Service"
        Set-Service -Name "Steam Client Service" -StartupType Manual
        pause
    }
    if ($confirmation -eq "stop") {
        Stop-Service -Name "Steam Client Service" -force
        Set-Service -Name "Steam Client Service" -StartupType Disabled
        pause
    }
    if ($confirmation -eq "enable") {
        Set-Service -Name "Steam Client Service" -StartupType Manual
        pause
    }
    if ($confirmation -eq "disable") {
        Set-Service -Name "Steam Client Service" -StartupType Disabled
        pause
    }
    if ($confirmation -eq "display") {
        Get-Service -Name "Steam Client Service"
        pause
    }
}
if ($confirmation = "exit") {
    pause
    exit
}
