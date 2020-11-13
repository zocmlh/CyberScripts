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


Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                                   = New-Object System.Windows.Forms.Form
$Form.Text                              = 'Data Entry Form'
$Form.ClientSize                        = New-Object System.Drawing.Point(300,200)
$Form.minimumSize                       = New-Object System.Drawing.Size(300,200) 
$Form.maximumSize                       = New-Object System.Drawing.Size(300,200)
$Form.StartPosition                     = 'CenterScreen'
$Form.MaximizeBox                       = $false

$WINTOOLLabel                           = New-Object System.Windows.Forms.Label
$WINTOOLLabel.Location                  = New-Object System.Drawing.Point(10,20)
$WINTOOLLabel.Size                      = New-Object System.Drawing.Size(280,20)
$WINTOOLLabel.Text                      = 'Please enter the desired port to be disabled below'

$WINTOOLTextBox                         = New-Object System.Windows.Forms.TextBox
$WINTOOLTextBox.Location                = New-Object System.Drawing.Point(10,40)
$WINTOOLTextBox.Size                    = New-Object System.Drawing.Size(260,20)

$WINTOOLCheckbox                        = New-Object System.Windows.Forms.checkbox
$WINTOOLCheckbox.Location               = New-Object System.Drawing.Size(30,50)
$WINTOOLCheckbox.Size                   = New-Object System.Drawing.Size(250,50)
$WINTOOLCheckbox.Text                   = "Outbounn Enabled/Inbound Disabled"
$WINTOOLCheckbox.Checked                = $true 

$WINTOOLButton1                         = New-Object system.Windows.Forms.Button
$WINTOOLButton1.text                    = "OK"
$WINTOOLButton1.Size                    = New-Object System.Drawing.Size(75,25)
$WINTOOLButton1.Enabled                 = $true
$WINTOOLButton1.location                = New-Object System.Drawing.Point(75,100)
$WINTOOLButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$WINTOOLButton2                         = New-Object system.Windows.Forms.Button
$WINTOOLButton2.text                    = "Cancel"
$WINTOOLButton2.Size                    = New-Object System.Drawing.Size(75,23)
$WINTOOLButton2.Enabled                 = $true
$WINTOOLButton2.location                = New-Object System.Drawing.Point(150,100)
$WINTOOLButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)


$Form.controls.AddRange(@($WINTOOLButton1,$WINTOOLButton2,$WINTOOLLabel,$WINTOOLTextBox,$WINTOOLCheckbox))


$WINTOOLButton1.Add_Click({ 
  if ($WINTOOLCheckbox.Checked) {
    $x = $WINTOOLTextBox.Text
    New-NetFirewallRule -DisplayName "Disabling Port $x" -Direction Outbound -Profile any -Protocol tcp -RemotePort $x
    PowerShell -NoProfile -NonInteractive -Command [reflection.assembly]::loadwithpartialname(''); [system.Windows.Forms.MessageBox]::show('Task Completed')
  } else {
    $x = $WINTOOLTextBox.Text
    New-NetFirewallRule -DisplayName "Disabling Port $x" -Direction Inbound -Profile any -Protocol tcp -RemotePort $x
    PowerShell -NoProfile -NonInteractive -Command [reflection.assembly]::loadwithpartialname(''); [system.Windows.Forms.MessageBox]::show('Task Completed')
  }
 })

$WINTOOLButton2.Add_Click({ $Form.Close() })


[void]$Form.ShowDialog()