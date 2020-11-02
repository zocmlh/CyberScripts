#Powershell Check Services
#New-Item -ItemType Directory -Path 'C:\Powershell Output'
#Disabled Services
<#
    $DisServices = @(
        'BTAGService', 'bthserv', 'Browser', 'MapsBroker', 'lfsvc', 'lltdsvc', 
        'MSiSCSI', 'PNRPsvc', 'p2psvc', 'PNRPAutoReg', 'wercplsupport', 'RasAuto', 
        'SessionEnv', 'TermService', 'UmRdpService', 'RpcLocator', 'RemoteRegistry', 
        'RemoteAccess', 'LanmanServer', 'SSDPSRV', 'upnphost', 'WerSvc', 'Wecsvc', 
        'WMPNetworkSvc', 'icssvc', 'WpnService', 'PushToInstall', 'WinRM', 
        'XboxGipSvc', 'XblAuthManager', 'XblGameSave', 'XboxNetApiSvc'
    )
        foreach ($DisService in $DisServices) {
            $Disname = (Get-Service $Service).Displayname
            if ((Get-Service $Service).Status -eq 'Stopped') {
                Write-Host $Disname "is Disabled" -ForegroundColor green 
            } else {
                Write-Host $Disname "is Enabled" -ForegroundColor red 
        }
}
#>
#Get all running Processes and their Ports
<#
$obj=@()

Foreach($p In (Get-Process -IncludeUserName | Where-Object {$_.UserName} | `
  Select-Object Id, ProcessName, UserName)) {
      $properties = @{ 'PID'=$p.Id;
                       'ProcessName'=$p.ProcessName;
                       'UserName'=$p.UserName;
                     }
      $psobj = New-Object -TypeName psobject -Property $properties
      $obj+=$psobj
  }

Get-NetTCPConnection | Where-Object {$_.State -eq "Established"} | Select-Object `
  RemoteAddress, `
  RemotePort, `
  @{n="PID";e={$_.OwningProcess}}, @{n="ProcessName";e={($obj |Where-Object PID -eq $_.OwningProcess | Select-Object -ExpandProperty ProcessName)}}, `
  @{n="UserName";e={($obj |Where-Object PID -eq $_.OwningProcess | Select-Object -ExpandProperty UserName)}} |
  Sort-Object -Property ProcessName, UserName |
  Format-Table -auto
#>

#Get all Scheduled Tasks and their names
#Get-ScheduledTask | Get-ScheduledTaskInfo | Select-Object TaskName,LastRunTime,LastTaskResult $.Author | Tee-Object -FilePath "C:\Powershell Output\ScheduledTasks.txt"

#Start-Process powershell "-NoExit -Command cls;Get-ScheduledTask | Get-ScheduledTaskInfo | Select-Object TaskName,TaskPath,LastRunTime,LastTaskResult" -PassThru
 


#Firewall Properties
$FWProfiles = (Get-NetFirewallProfile);
Write-Host "Windows Firewall Profile Statuses" -Foregroundcolor Yellow;
$FWProfiles | ForEach-Object{
    if($_.Enabled -eq 1){
        Write-Host "The Windows Firewall $($_.Name) profile is enabled"  -Foregroundcolor Green
        }else{
        Write-Host "The Windows Firewall $($_.Name) profile is disabled" -Foregroundcolor Red
        }
      }

$FWDProfiles = (Get-NetFirewallProfile -Name Domain)
Write-Host "Windows Firewall Domain" -ForegroundColor Yellow
$FWDProfiles | ForEach-Object{
  if($_.Enabled -eq 1){
    Write-Host "Domain $($_.Name) Domain" -ForegroundColor Green
  }elseif ($_.Disabled -eq 1) {
    Write-Host "Domain $($_.Name) Domain" -ForegroundColor Red
  }elseif ($_.NotConfigured -eq 1) {
    Write-Host "Domain $($_.Name) Domain" -ForegroundColor Yellow
  }
}