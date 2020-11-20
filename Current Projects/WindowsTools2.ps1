Write-Output "
            =====================================================================================

                                        Windows Tools 0.2

            =====================================================================================
"
function StartWindowsTools {
    Start-Sleep 0.75
    Clear-Host
    Write-Output "
             =====================================================================================

                                        Choose Settings

                    1:Download       2:Output Logs      3:Apply GPO       4:Change Settings                                 

            =====================================================================================
    "
    $Enabled = Read-Host -Prompt 'Input what tab to be enabled'
    Clear-Host
    Write-Host "Going to menu $Enabled"
    Start-Sleep 0.75
    Clear-Host
    if($Enabled -eq 1) {
        function Downloads {
            Write-Host "
            =====================================================================================

                                            Downloads

                 1:Download RSAT tools    2:Download GIT   3:Download Security Templates
                                        4:Download Sysinternals

            =====================================================================================
            "  
            $Prompt1 = Read-Host "What download do you want?"

            if($Prompt1 -eq "1"){
                Write-Host "Downloading RSAT Tools"
                StartWindowsTools
            }elseif($Prompt1 -eq "2"){
                Write-Host "Downloading GIT"
                StartWindowsTools
            }elseif($Prompt1 -eq "3"){
                Write-Host "Downloading Security Templates"
                StartWindowsTools
            }elseif($Prompt1 -eq "4"){
                Write-Host "Download Sysinternals"
                StartWindowsTools
            }else{
                Write-Host "$Prompt1 is not a valid download"
                Start-Sleep 0.75
                Clear-Host
                Downloads
            }
        }
        Downloads

    }elseif($Enabled -eq 2) {
        function Logging {
            Start-Sleep 0.75
            Clear-Host
            Write-Host "
            =====================================================================================

                                           Logging

              1:Services    2:Processes   3:Scheduled Tasks   4:Firewall States   5:Audit State
                                6:All Installed Programs    7:Exit

            =====================================================================================
            "
            $Prompt2 = Read-Host "What logging do you want to enable?"

            if($Prompt2 -eq "1"){
                Write-Host "All services have been logged"
                Logging
            }elseif($Prompt2 -eq "2"){
                Write-Host "All running processes have been logged"
                Logging
            }elseif($Prompt2 -eq "3"){
                Write-Host "All scheduled tasks have been logged"
                Logging
            }elseif($Prompt2 -eq "4"){
                Write-Host "Local Security Policy audits have been logged"
                Logging
            }elseif($Prompt2 -eq "5"){
                Write-Host "Local Security Policy audits have been logged"
                Logging
            }elseif($Prompt2 -eq "6"){
                Write-Host "Local Security Policy audits have been logged"
                Logging
            }elseif($Prompt2 -eq "7") {
                StartWindowsTools
            }else{
                Write-Host "$Prompt2 is not a valid download"
                Start-Sleep 0.75
                Clear-Host
                Logging
            }
        }
        Logging
    }else {
        Write-Host "$Enabled is not valid"
        Start-Sleep 0.75
        Clear-Host
        StartWindowsTools
    }
}
StartWindowsTools