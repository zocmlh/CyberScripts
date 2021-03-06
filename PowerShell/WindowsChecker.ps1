#Powershell Check Services
#New-Item -ItemType Directory -Path 'C:\Powershell Output'	

#Server installs


#Windows installs


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
              $Disname = (Get-Service $DisService).Displayname
              if ((Get-Service $DisServices).Status -eq 'Stopped') {
                  Write-Output $Disname "is Disabled" -ForegroundColor green 
              } else {
                  Write-Host $Disname "is Enabled" -ForegroundColor red 
          }
  }
  
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
<#
$FWProfiles = (Get-NetFirewallProfile);
Write-Host "Windows Firewall Profile Statuses" -Foregroundcolor Yellow;
$FWProfiles | ForEach-Object{
    if($_.Enabled -eq 1){
        Write-Host "The Windows Firewall $($_.Name) profile is enabled"  -Foregroundcolor Green
        }else{
        Write-Host "The Windows Firewall $($_.Name) profile is disabled" -Foregroundcolor Red
        }
      }
#>

#Auditing
#auditpol.exe /get /category:* | Tee-Object -FilePath "C:\Powershell Output\Audits.txt"



#Get-ChildItem *.png,*.jpg,*.jpeh,*.tiff,*.raw,*.pdf,*.txt -recurse | foreach-object {move-item $_ -destination c:\destination -whatif}