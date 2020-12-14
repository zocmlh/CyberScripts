#Main WINTOOL Script

$path = "C:\Powershell Output"
If(!(test-path $path))
{
      New-Item -ItemType Directory -Force -Path $path
}

function WINTOOLScript {

  #Download essental programs
   function WINTOOL1 {
    Add-Type -AssemblyName System.Windows.Forms
    [System.Windows.Forms.Application]::EnableVisualStyles()

    $Form                                   = New-Object system.Windows.Forms.Form
    $Form.ClientSize                        = New-Object System.Drawing.Point(145,230)
    $Form.FormBorderStyle                   = 'Fixed3D'
    $Form.MaximizeBox                       = $false
    $Form.text                              = "WINTOOL"
    $Form.TopMost                           = $false

    $WINTOOLButton1                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton1.text                    = "Windows RSAT Tools"
    $WINTOOLButton1.width                   = 105
    $WINTOOLButton1.height                  = 35
    $WINTOOLButton1.Enabled                 = $true
    $WINTOOLButton1.location                = New-Object System.Drawing.Point(20,15)
    $WINTOOLButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $WINTOOLButton2                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton2.text                    = "Download GIT"
    $WINTOOLButton2.width                   = 105
    $WINTOOLButton2.height                  = 35
    $WINTOOLButton2.Enabled                 = $true
    $WINTOOLButton2.location                = New-Object System.Drawing.Point(20,55)
    $WINTOOLButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $WINTOOLButton3                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton3.text                    = "GIT Download GPO"
    $WINTOOLButton3.width                   = 105
    $WINTOOLButton3.height                  = 35
    $WINTOOLButton3.Enabled                 = $true
    $WINTOOLButton3.location                = New-Object System.Drawing.Point(20,95)
    $WINTOOLButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $WINTOOLButton4                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton4.text                    = "Security Essentals"
    $WINTOOLButton4.width                   = 105
    $WINTOOLButton4.height                  = 35
    $WINTOOLButton4.Enabled                 = $true
    $WINTOOLButton4.location                = New-Object System.Drawing.Point(20,135)
    $WINTOOLButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $WINTOOLButton5                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton5.text                    = "Start Windows Updates"
    $WINTOOLButton5.width                   = 105
    $WINTOOLButton5.height                  = 35
    $WINTOOLButton5.Enabled                 = $true
    $WINTOOLButton5.location                = New-Object System.Drawing.Point(20,175)
    $WINTOOLButton5.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)


    $Form.controls.AddRange(@($WINTOOLButton1,$WINTOOLButton2,$WINTOOLButton3,$WINTOOLButton4,$WINTOOLButton5))


    $WINTOOLButton1.Add_Click({ Invoke-Expression 'Get-WindowsCapability -Name RSAT* -Online | Add-WindowsCapability -Online'
      PowerShell -NoProfile -NonInteractive -Command [reflection.assembly]::loadwithpartialname(''); [system.Windows.Forms.MessageBox]::show('Task Completed')
    })
    
    $WINTOOLButton2.Add_Click({ Start-Process https://git-scm.com/download/win
      PowerShell -NoProfile -NonInteractive -Command [reflection.assembly]::loadwithpartialname(''); [system.Windows.Forms.MessageBox]::show('Task Completed')
    })

    $WINTOOLButton3.Add_Click({ git clone https://github.com/zocmlh/CyberSecurityTemplates.git 'C:\GitOutput\' 
      PowerShell -NoProfile -NonInteractive -Command [reflection.assembly]::loadwithpartialname(''); [system.Windows.Forms.MessageBox]::show('Task Completed')
    })

    $WINTOOLButton4.Add_Click({ Start-Process https://www.microsoft.com/en-us/download/confirmation.aspx?id=5201
      PowerShell -NoProfile -NonInteractive -Command [reflection.assembly]::loadwithpartialname(''); [system.Windows.Forms.MessageBox]::show('Task Completed')
     })

    $WINTOOLButton5.Add_Click({ 
      # Install-Module PSWindowsUpdate
      # Get-Command –module PSWindowsUpdate
      # Add-WUServiceManager -ServiceID 7971f918-a847-4430-9279-4a52d1efe18d
      # Get-WUInstall –MicrosoftUpdate –AcceptAll
      # PowerShell -NoProfile -NonInteractive -Command [reflection.assembly]::loadwithpartialname(''); [system.Windows.Forms.MessageBox]::show('Task Completed')
     })

    [void]$Form.ShowDialog()
  }
  #Logging tools
  function WINTOOL2 {

    #Get scheduled tasks
    function getscheduledtasks {
    function getTasks($path) {
      $out = @()
  
      # Get root tasks
      $schedule.GetFolder($path).GetTasks(0) | ForEach-Object {
          $xml = [xml]$_.xml
          $out += New-Object psobject -Property @{
              "Name" = $_.Name
              "Path" = $_.Path
              "LastRunTime" = $_.LastRunTime
              "NextRunTime" = $_.NextRunTime
              "Actions" = ($xml.Task.Actions.Exec | ForEach-Object { "$($_.Command) $($_.Arguments)" }) -join "`n"
          }
      }
  
      # Get tasks from subfolders
      $schedule.GetFolder($path).GetFolders(0) | ForEach-Object {
          $out += getTasks($_.Path)
      }
  
      #Output
      $out
  }
  
  $tasks = @()
  
  $schedule = New-Object -ComObject "Schedule.Service"
  $schedule.Connect() 
  
  # Start inventory
  $tasks += getTasks("\")
  
  # Close com
  [System.Runtime.Interopservices.Marshal]::ReleaseComObject($schedule) | Out-Null
  Remove-Variable schedule
  
  # Output all tasks
  Out-File -FilePath 'C:\Powershell Output\ScheduledTasks.txt' -InputObject $tasks
  }

      Add-Type -AssemblyName System.Windows.Forms
      [System.Windows.Forms.Application]::EnableVisualStyles()

      $Form                                   = New-Object system.Windows.Forms.Form
      $Form.ClientSize                        = New-Object System.Drawing.Point(145,225)
      $Form.FormBorderStyle                   = 'Fixed3D'
      $Form.MaximizeBox                       = $false
      $Form.text                              = "WINTOOL"
      $Form.TopMost                           = $false

      $WINTOOLButton1                         = New-Object system.Windows.Forms.Button
      $WINTOOLButton1.text                    = "Group Polices"
      $WINTOOLButton1.width                   = 105
      $WINTOOLButton1.height                  = 35
      $WINTOOLButton1.Enabled                 = $true
      $WINTOOLButton1.location                = New-Object System.Drawing.Point(20,15)
      $WINTOOLButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

      $WINTOOLButton2                         = New-Object System.Windows.Forms.Button
      $WINTOOLButton2.text                    = "Processes"
      $WINTOOLButton2.width                   = 105
      $WINTOOLButton2.height                  = 35
      $WINTOOLButton2.Enabled                 = $true
      $WINTOOLButton2.location                = New-Object System.Drawing.Point(20,55)
      $WINTOOLButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

      $WINTOOLButton3                         = New-Object System.Windows.Forms.Button
      $WINTOOLButton3.text                    = "Scheduled Tasks"
      $WINTOOLButton3.width                   = 105
      $WINTOOLButton3.height                  = 35
      $WINTOOLButton3.Enabled                 = $true
      $WINTOOLButton3.location                = New-Object System.Drawing.Point(20,95)
      $WINTOOLButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

      $WINTOOLButton4                         = New-Object System.Windows.Forms.Button
      $WINTOOLButton4.text                    = "Firewall States"
      $WINTOOLButton4.width                   = 105
      $WINTOOLButton4.height                  = 35
      $WINTOOLButton4.Enabled                 = $true
      $WINTOOLButton4.location                = New-Object System.Drawing.Point(20,135)
      $WINTOOLButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

      $WINTOOLButton5                         = New-Object System.Windows.Forms.Button
      $WINTOOLButton5.text                    = "Audit State"
      $WINTOOLButton5.width                   = 105
      $WINTOOLButton5.height                  = 35
      $WINTOOLButton5.Enabled                 = $true
      $WINTOOLButton5.location                = New-Object System.Drawing.Point(20,175)
      $WINTOOLButton5.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

      $Form.controls.AddRange(@($WINTOOLButton1,$WINTOOLButton2,$WINTOOLButton3,$WINTOOLButton4,$WINTOOLButton5))

      $WINTOOLButton1.Add_Click({ gpresult /h 'C:\Powershell Output\GPOReport.html'

       })

      $WINTOOLButton2.Add_Click({ 
        Get-NetTcpConnection | 
        Select-Object @{Name="Process";Expression={(Get-Process -Id $_.OwningProcess).ProcessName}},local*,remote*,state | 
        Sort-Object -Property Process | Out-File 'C:\ProcessOutput.txt'
        PowerShell -NoProfile -NonInteractive -Command [reflection.assembly]::loadwithpartialname(''); [system.Windows.Forms.MessageBox]::show('Task Completed')
       })

      $WINTOOLButton3.Add_Click({ getscheduledtasks
        PowerShell -NoProfile -NonInteractive -Command [reflection.assembly]::loadwithpartialname(''); [system.Windows.Forms.MessageBox]::show('Task Completed')
      })

      $WINTOOLButton4.Add_Click({ Get-NetFirewallProfile | Out-File 'C:\Powershell Output\FirewallOutput.txt' 
        PowerShell -NoProfile -NonInteractive -Command [reflection.assembly]::loadwithpartialname(''); [system.Windows.Forms.MessageBox]::show('Task Completed')
      })

      $WINTOOLButton5.Add_Click({ auditpol.exe /get /category:* | Out-File 'C:\Powershell Output\AuditOutput.txt'
        PowerShell -NoProfile -NonInteractive -Command [reflection.assembly]::loadwithpartialname(''); [system.Windows.Forms.MessageBox]::show('Task Completed')
      })

      [void]$Form.ShowDialog()
      }
  #Import GPO policies + Disable Ports + Disable/Enable services + disable c: and user folder sharing
  function WINTOOL3 {
      #Disable firewall outbound port
      function PortDisable {
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

      }
      #Apply GPO
      function ApplyGPO {
        Add-Type -AssemblyName System.Windows.Forms
        [System.Windows.Forms.Application]::EnableVisualStyles()
    
        $Form                                   = New-Object system.Windows.Forms.Form
        $Form.ClientSize                        = New-Object System.Drawing.Point(145,230)
        $Form.FormBorderStyle                   = 'Fixed3D'
        $Form.MaximizeBox                       = $false
        $Form.text                              = "WINTOOL"
        $Form.TopMost                           = $false
    
        $WINTOOLButton1                         = New-Object system.Windows.Forms.Button
        $WINTOOLButton1.text                    = "Local Security Policy"
        $WINTOOLButton1.width                   = 105
        $WINTOOLButton1.height                  = 35
        $WINTOOLButton1.Enabled                 = $true
        $WINTOOLButton1.location                = New-Object System.Drawing.Point(20,15)
        $WINTOOLButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
    
        $WINTOOLButton2                         = New-Object system.Windows.Forms.Button
        $WINTOOLButton2.text                    = "Firewall"
        $WINTOOLButton2.width                   = 105
        $WINTOOLButton2.height                  = 35
        $WINTOOLButton2.Enabled                 = $true
        $WINTOOLButton2.location                = New-Object System.Drawing.Point(20,55)
        $WINTOOLButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

        $Form.controls.AddRange(@($WINTOOLButton1,$WINTOOLButton2))

        $WINTOOLButton1.Add_Click({ Start-Process secpol.msc 
          PowerShell -NoProfile -NonInteractive -Command [reflection.assembly]::loadwithpartialname(''); [system.Windows.Forms.MessageBox]::show('Import SecuritySettingsTemplateNoRemote.inf')
        })

        $WINTOOLButton2.Add_Click({ Start-Process WF.msc 
          PowerShell -NoProfile -NonInteractive -Command [reflection.assembly]::loadwithpartialname(''); [system.Windows.Forms.MessageBox]::show('Import FirewallPolicy.wfw')
        })

        [void]$Form.ShowDialog()
      }
      #disable services 
      function disableservices{
        cmd.exe /c 'sc stop tlntsvr'
        cmd.exe /c 'sc config tlntsvr start= disabled'
        cmd.exe /c 'sc stop msftpsvc'
        cmd.exe /c 'sc config msftpsvc start= disabled'
        cmd.exe /c 'sc stop snmptrap'
        cmd.exe /c 'sc config snmptrap start= disabled'
        cmd.exe /c 'sc stop ssdpsrv'
        cmd.exe /c 'sc config ssdpsrv start= disabled'
        cmd.exe /c 'sc stop termservice'
        cmd.exe /c 'sc config termservice start= disabled'
        cmd.exe /c 'sc stop sessionenv'
        cmd.exe /c 'sc config sessionenv start= disabled'
        cmd.exe /c 'sc stop remoteregistry'
        cmd.exe /c 'sc config remoteregistry start= disabled'
        cmd.exe /c 'sc stop RemoteAccess'
        cmd.exe /c 'sc config RemoteAccess start= disabled'
        cmd.exe /c 'sc stop mnmsrvc'
        cmd.exe /c 'sc config mnmsrvc start= disabled'
        cmd.exe /c 'sc stop NetTcpPortSharing'
        cmd.exe /c 'sc config NetTcpPortSharing start= disabled'
        cmd.exe /c 'sc stop XblAuthManager'
        cmd.exe /c 'sc config XblAuthManager start= disabled'
        cmd.exe /c 'sc stop XblGameSave'
        cmd.exe /c 'sc config XblGameSave start= disabled'
        cmd.exe /c 'sc stop XboxGipSvc'
        cmd.exe /c 'sc config XboxGipSvc start= disabled'
        cmd.exe /c 'sc stop xboxgip'
        cmd.exe /c 'sc config xboxgip start= disabled'
        cmd.exe /c 'sc stop xbgm'
        cmd.exe /c 'sc config xbgm start= disabled'
        cmd.exe /c 'sc stop simptcp'
        cmd.exe /c 'sc config simptcp start= disabled'
        cmd.exe /c 'sc stop fax'
        cmd.exe /c 'sc config fax start= disabled'
        cmd.exe /c 'sc stop Msftpsvc'
        cmd.exe /c 'sc config Msftpsvc start= disabled'
        cmd.exe /c 'sc stop iprip'
        cmd.exe /c 'sc config iprip start= disabled'
        cmd.exe /c 'sc stop ftpsvc'
        cmd.exe /c 'sc config ftpsvc start= disabled'
        cmd.exe /c 'sc config W3svc start= disabled'
        cmd.exe /c 'sc stop Smtpsvc'
        cmd.exe /c 'sc config Smtpsvc start= disabled'
        cmd.exe /c 'sc stop Iisadmin'
        cmd.exe /c 'sc config Iisadmin start= disabled'
        cmd.exe /c 'sc stop IsmServ'
        cmd.exe /c 'sc config IsmServ start= disabled'
        cmd.exe /c 'sc stop WmdmPmSN'
        cmd.exe /c 'sc config WmdmPmSN start= disabled'
        cmd.exe /c 'sc stop helpsvc'
        cmd.exe /c 'sc config helpsvc start= disabled'
        cmd.exe /c 'sc stop Spooler'
        cmd.exe /c 'sc config Spooler start= disabled'
        cmd.exe /c 'sc stop lanmanserver'
        cmd.exe /c 'sc config lanmanserver start= disabled'
        cmd.exe /c 'sc stop Sacsvr'
        cmd.exe /c 'sc config Sacsvr start= disabled'
        cmd.exe /c 'sc stop nfssvc'
        cmd.exe /c 'sc config nfssvc start= disabled'
        cmd.exe /c 'sc stop nfsclnt'
        cmd.exe /c 'sc config nfsclnt start= disabled'
        cmd.exe /c 'sc stop lltdsvc'
        cmd.exe /c 'sc config lltdsvc start= disabled'
        cmd.exe /c 'sc stop iphlpsvc'
        cmd.exe /c 'sc config iphlpsvc start= disabled'
      }
      #enableservies
      function enableservices {
        cmd.exe /c 'sc start wscsvc'
        cmd.exe /c 'sc config wscsvc start= auto'
        cmd.exe /c 'sc start EventLog'
        cmd.exe /c 'sc config EventLog start= auto'
        cmd.exe /c 'sc start MpsSvc'
        cmd.exe /c 'sc config MpsSvc start= auto'
        cmd.exe /c 'sc start WinDefend'
        cmd.exe /c 'sc config WinDefend start= auto'
        cmd.exe /c 'sc start WdNisSvc'
        cmd.exe /c 'sc config WdNisSvc start= auto'
        cmd.exe /c 'sc start Schedule'
        cmd.exe /c 'sc config Schedule start= auto'
      }
      function sharing {
      }

    Add-Type -AssemblyName System.Windows.Forms
    [System.Windows.Forms.Application]::EnableVisualStyles()

    $Form                                   = New-Object system.Windows.Forms.Form
    $Form.ClientSize                        = New-Object System.Drawing.Point(145,230)
    $Form.FormBorderStyle                   = 'Fixed3D'
    $Form.MaximizeBox                       = $false
    $Form.text                              = "WINTOOL"
    $Form.TopMost                           = $false

    $WINTOOLButton1                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton1.text                    = "1"
    $WINTOOLButton1.width                   = 105
    $WINTOOLButton1.height                  = 35
    $WINTOOLButton1.Enabled                 = $true
    $WINTOOLButton1.location                = New-Object System.Drawing.Point(20,15)
    $WINTOOLButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $WINTOOLButton2                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton2.text                    = "Disable Services"
    $WINTOOLButton2.width                   = 105
    $WINTOOLButton2.height                  = 35
    $WINTOOLButton2.Enabled                 = $true
    $WINTOOLButton2.location                = New-Object System.Drawing.Point(20,55)
    $WINTOOLButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $WINTOOLButton3                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton3.text                    = "Enable Services"
    $WINTOOLButton3.width                   = 105
    $WINTOOLButton3.height                  = 35
    $WINTOOLButton3.Enabled                 = $true
    $WINTOOLButton3.location                = New-Object System.Drawing.Point(20,95)
    $WINTOOLButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $WINTOOLButton4                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton4.text                    = "Import GPO"
    $WINTOOLButton4.width                   = 105
    $WINTOOLButton4.height                  = 35
    $WINTOOLButton4.Enabled                 = $true
    $WINTOOLButton4.location                = New-Object System.Drawing.Point(20,135)
    $WINTOOLButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $WINTOOLButton5                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton5.text                    = "Port Disable Outbound"
    $WINTOOLButton5.width                   = 105
    $WINTOOLButton5.height                  = 35
    $WINTOOLButton5.Enabled                 = $true
    $WINTOOLButton5.location                = New-Object System.Drawing.Point(20,175)
    $WINTOOLButton5.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)


    $Form.controls.AddRange(@($WINTOOLButton1,$WINTOOLButton2,$WINTOOLButton3,$WINTOOLButton4,$WINTOOLButton5))


    $WINTOOLButton1.Add_Click({  })

    $WINTOOLButton2.Add_Click({  })

    $WINTOOLButton3.Add_Click({  })

    $WINTOOLButton4.Add_Click({ ApplyGPO })

    $WINTOOLButton5.Add_Click({ PortDisable })

    [void]$Form.ShowDialog()
    }
    #Random Stuff
  function WINTOOL4 {
          #Get main account
          function ChangePassword {
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
            $WINTOOLLabel.Text                      = 'Please enter the main user account'
            
            $WINTOOLTextBox                         = New-Object System.Windows.Forms.TextBox
            $WINTOOLTextBox.Location                = New-Object System.Drawing.Point(10,40)
            $WINTOOLTextBox.Size                    = New-Object System.Drawing.Size(260,20)
            
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
              $UserAccount = $WINTOOLTextBox.Text
              PowerShell -NoProfile -NonInteractive -Command [reflection.assembly]::loadwithpartialname(''); [system.Windows.Forms.MessageBox]::show($UserAccount)
              # $password = Get-WmiObject -class win32_useraccount -filter '$UserAccount'
              # foreach ($password in $password) {
              #   net user $password.Name N0tTheDroidsYouAreLookingFor  /passwordreq:yes /logonpasswordchg:yes | out-null
              #   PowerShell -NoProfile -NonInteractive -Command [reflection.assembly]::loadwithpartialname(''); [system.Windows.Forms.MessageBox]::show($password) 
              # }
              # wmic UserAccount set PasswordExpires=True | out-null
              # wmic UserAccount set Lockout=False | out-null
              # PowerShell -NoProfile -NonInteractive -Command [reflection.assembly]::loadwithpartialname(''); [system.Windows.Forms.MessageBox]::show('Task Completed')
              $Form.Close()
             })
             
            $WINTOOLButton2.Add_Click({ $Form.Close() })
            
            [void]$Form.ShowDialog()
        
              }


    Add-Type -AssemblyName System.Windows.Forms
    [System.Windows.Forms.Application]::EnableVisualStyles()

    $Form                                   = New-Object system.Windows.Forms.Form
    $Form.ClientSize                        = New-Object System.Drawing.Point(145,230)
    $Form.FormBorderStyle                   = 'Fixed3D'
    $Form.MaximizeBox                       = $false
    $Form.text                              = "WINTOOL"
    $Form.TopMost                           = $false

    $WINTOOLButton1                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton1.text                    = "Disable Admin Guest"
    $WINTOOLButton1.width                   = 105
    $WINTOOLButton1.height                  = 35
    $WINTOOLButton1.Enabled                 = $true
    $WINTOOLButton1.location                = New-Object System.Drawing.Point(20,15)
    $WINTOOLButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $WINTOOLButton2                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton2.text                    = "DND Last Username"
    $WINTOOLButton2.width                   = 105
    $WINTOOLButton2.height                  = 35
    $WINTOOLButton2.Enabled                 = $true
    $WINTOOLButton2.location                = New-Object System.Drawing.Point(20,55)
    $WINTOOLButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $WINTOOLButton3                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton3.text                    = "AutoUpdate On"
    $WINTOOLButton3.width                   = 105
    $WINTOOLButton3.height                  = 35
    $WINTOOLButton3.Enabled                 = $true
    $WINTOOLButton3.location                = New-Object System.Drawing.Point(20,95)
    $WINTOOLButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $WINTOOLButton4                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton4.text                    = "Check Installed Programs"
    $WINTOOLButton4.width                   = 105
    $WINTOOLButton4.height                  = 35
    $WINTOOLButton4.Enabled                 = $true
    $WINTOOLButton4.location                = New-Object System.Drawing.Point(20,135)
    $WINTOOLButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $WINTOOLButton5                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton5.text                    = "Change All Pass"
    $WINTOOLButton5.width                   = 105
    $WINTOOLButton5.height                  = 35
    $WINTOOLButton5.Enabled                 = $true
    $WINTOOLButton5.location                = New-Object System.Drawing.Point(20,175)
    $WINTOOLButton5.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)


    $Form.controls.AddRange(@($WINTOOLButton1,$WINTOOLButton2,$WINTOOLButton3,$WINTOOLButton4,$WINTOOLButton5))


    $WINTOOLButton1.Add_Click({ 
      net user administrator /active:no 
      net user guest /active:no
     })

    $WINTOOLButton2.Add_Click({ 
      reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableCAD" /t REG_DWORD /d 1 /f
     })

    $WINTOOLButton3.Add_Click({ 
      $AutoUpdate = (New-Object -com "Microsoft.Update.AutoUpdate").Settings
      $AutoUpdate.NotificationLevel = 4
      $AutoUpdate.Save()
      PowerShell -NoProfile -NonInteractive -Command [reflection.assembly]::loadwithpartialname(''); [system.Windows.Forms.MessageBox]::show('Task Completed')
     })

    $WINTOOLButton4.Add_Click({ 
      Get-WmiObject -Class Win32_Product | Out-File 'C:\Powershell Output\InstalledPrograms.txt'
      PowerShell -NoProfile -NonInteractive -Command [reflection.assembly]::loadwithpartialname(''); [system.Windows.Forms.MessageBox]::show('Task Completed')
     })

    $WINTOOLButton5.Add_Click({
      ChangePassword
     })

    [void]$Form.ShowDialog()
    }
  #Registry 
    function WINTOOL5 {
      function autoupdate {
        # Windows\WindowsUpdate
        reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v DisableWindowsUpdateAccess /t REG_DWORD /d 0 /f
        reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v ElevateNonAdmins /t REG_DWORD /d 0 /f
        reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v AutoInstallMinorUpdates /t REG_DWORD /d 1 /f
        reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v AUOptions /t REG_DWORD /d 4 /f
        reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v NoAutoUpdate /t REG_DWORD /d 0 /f

        # CurrentVerison
        reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v AUOptions /t REG_DWORD /d 4 /f
        reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\WindowsUpdate" /v DisableWindowsUpdateAccess /t REG_DWORD /d 0 /f
        reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoWindowsUpdate /t REG_DWORD /d 0 /f

        # Internet Communication
        reg add "HKLM\SYSTEM\Internet Communication Management\Internet Communication" /v DisableWindowsUpdateAccess /t REG_DWORD /d 0 /f
      }
      function remotedesktop {
        # Terminal Server
        reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 1 /f
        reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v AllowTSConnections /t REG_DWORD /d 0 /f
        reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fAllowToGetHelp /t REG_DWORD /d 0 /f

        # Terminal Services
        reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows NT\Terminal Services" /v "AllowSignedFiles" /t REG_DWORD /d 0 /f
        reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows NT\Terminal Services" /v "AllowUnsignedFiles" /t REG_DWORD /d 0 /f
        reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows NT\Terminal Services" /v "DisablePasswordSaving" /t REG_DWORD /d 1 /f
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WinRM\Service\WinRS" /v "AllowRemoteShellAccess" /t REG_DWORD /d 0 /f
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v "AllowSignedFiles" /t REG_DWORD /d 0 /f
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v "AllowUnsignedFiles" /t REG_DWORD /d 0 /f
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v "CreateEncryptedOnlyTickets" /t REG_DWORD /d 1 /f
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v "DisablePasswordSaving" /t REG_DWORD /d 1 /f
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v "fAllowToGetHelp" /t REG_DWORD /d 0 /f
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v "fAllowUnsolicited" /t REG_DWORD /d 0 /f
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v "fDenyTSConnections" /t REG_DWORD /d 1 /f
        # Terminal Services Client
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\Client" /v "fEnableUsbBlockDeviceBySetupClass" /t REG_DWORD /d 1 /f
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\Client" /v "fEnableUsbNoAckIsochWriteToDevice" /t REG_DWORD /d 80 /f
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\Client" /v "fEnableUsbSelectDeviceByInterface" /t REG_DWORD /d 1 /f

        # Standard Profile
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile\RemoteAdminSettings" /v "Enabled" /t REG_DWORD /d 0 /f
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile\Services\RemoteDesktop" /v "Enabled" /t REG_DWORD /d 0 /f
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile\Services\UPnPFramework" /v "Enabled" /t REG_DWORD /d 0 /f

        # Confrencing
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Conferencing" /v "NoRDS" /t REG_DWORD /d 1 /f
      }
      function uac {
        # enable uac
        reg ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 1 /f

        # set uac high
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "ConsentPromptBehaviorAdmin" -Type DWord -Value 5

        #uac prompt
	      Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "PromptOnSecureDesktop" -Type DWord -Value 1
        reg ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v PromptOnSecureDesktop /t REG_DWORD /d 1 /f



      }
      function websites {
        #do not let sites track you
        reg ADD "HKCU\Software\Microsoft\Internet Explorer\Main" /v DoNotTrack /t REG_DWORD /d 1 /f
        reg ADD "HKCU\Software\Microsoft\Internet Explorer\Download" /v RunInvalidSignatures /t REG_DWORD /d 1 /f
        reg ADD "HKCU\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_LOCALMACHINE_LOCKDOWN\Settings" /v LOCALMACHINE_CD_UNLOCK /t REG_DWORD /d 1 /f
        reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v WarnonZoneCrossing /t REG_DWORD /d 1 /f

        #warn if a site redirects you
        reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v WarnOnPostRedirect /t REG_DWORD /d 1 /f

        #warn if site certificate is bad 
        reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v WarnonBadCertRecving /t REG_DWORD /d 1 /f

        #
      }
      function windefender {
        #start windows defender
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 0 /f
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v ServiceKeepAlive /t REG_DWORD /d 1 /f
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v CheckForSignaturesBeforeRunningScan /t REG_DWORD /d 1 /f
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v DisableHeuristics /t REG_DWORD /d 0 /f
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableIOAVProtection /t REG_DWORD /d 0 /f
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableRealtimeMonitoring /t REG_DWORD /d 0 /f
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v ScanWithAntiVirus /t REG_DWORD /d 3 /f
      }
      function generalRegistry {
        #enable ctrl+alt+del
        reg ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableCAD /t REG_DWORD /d 0 /f

        #no auto logon for administrators
        reg ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AutoAdminLogon /t REG_DWORD /d 0 /f

        #idle time set to 15min
        reg ADD "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v autodisconnect /t REG_DWORD /d 15 /f

        #disable cd drive
        reg ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AllocateCDRoms /t REG_DWORD /d 1 /f

        #disable floppy drive
        reg ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AllocateFloppies /t REG_DWORD /d 1 /f

        #enable the local security authentication server
        reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\LSASS.exe" /v AuditLevel /t REG_DWORD /d 00000008 /f

        #show hidden files
        reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowSuperHidden /t REG_DWORD /d 1 /f
        reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden /t REG_DWORD /d 1 /f

        #disable autorun files
        reg ADD "HKCU\SYSTEM\CurrentControlSet\Services\CDROM" /v AutoRun /t REG_DWORD /d 1 /f
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoAutorun" /t REG_DWORD /d 1 /f
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoDriveTypeAutoRun" /t REG_DWORD /d 255 /f

        #enable phishing filter
        reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d 1 /f
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d 1 /f

      }

  Add-Type -AssemblyName System.Windows.Forms
  [System.Windows.Forms.Application]::EnableVisualStyles()

  $Form                                   = New-Object system.Windows.Forms.Form
  $Form.ClientSize                        = New-Object System.Drawing.Point(145,385)
  $Form.FormBorderStyle                   = 'Fixed3D'
  $Form.MaximizeBox                       = $false
  $Form.text                              = "WINTOOL"
  $Form.TopMost                           = $false

  $WINTOOLButton1                         = New-Object system.Windows.Forms.Button
  $WINTOOLButton1.text                    = "AutoUpdate"
  $WINTOOLButton1.width                   = 105
  $WINTOOLButton1.height                  = 35
  $WINTOOLButton1.Enabled                 = $true
  $WINTOOLButton1.location                = New-Object System.Drawing.Point(20,15)
  $WINTOOLButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

  $WINTOOLButton2                         = New-Object system.Windows.Forms.Button
  $WINTOOLButton2.text                    = "RemoteDesktop"
  $WINTOOLButton2.width                   = 105
  $WINTOOLButton2.height                  = 35
  $WINTOOLButton2.Enabled                 = $true
  $WINTOOLButton2.location                = New-Object System.Drawing.Point(20,55)
  $WINTOOLButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

  $WINTOOLButton3                         = New-Object system.Windows.Forms.Button
  $WINTOOLButton3.text                    = "UAC"
  $WINTOOLButton3.width                   = 105
  $WINTOOLButton3.height                  = 35
  $WINTOOLButton3.Enabled                 = $true
  $WINTOOLButton3.location                = New-Object System.Drawing.Point(20,95)
  $WINTOOLButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

  $WINTOOLButton4                         = New-Object system.Windows.Forms.Button
  $WINTOOLButton4.text                    = "Websites"
  $WINTOOLButton4.width                   = 105
  $WINTOOLButton4.height                  = 35
  $WINTOOLButton4.Enabled                 = $true
  $WINTOOLButton4.location                = New-Object System.Drawing.Point(20,135)
  $WINTOOLButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

  $WINTOOLButton5                         = New-Object system.Windows.Forms.Button
  $WINTOOLButton5.text                    = "WinDefender"
  $WINTOOLButton5.width                   = 105
  $WINTOOLButton5.height                  = 35
  $WINTOOLButton5.Enabled                 = $true
  $WINTOOLButton5.location                = New-Object System.Drawing.Point(20,175)
  $WINTOOLButton5.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

  $WINTOOLButton6                         = New-Object system.Windows.Forms.Button
  $WINTOOLButton6.text                    = "General"
  $WINTOOLButton6.width                   = 105
  $WINTOOLButton6.height                  = 35
  $WINTOOLButton6.Enabled                 = $true
  $WINTOOLButton6.location                = New-Object System.Drawing.Point(20,215)
  $WINTOOLButton6.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

  $WINTOOLButton7                         = New-Object system.Windows.Forms.Button
  $WINTOOLButton7.text                    = "7"
  $WINTOOLButton7.width                   = 105
  $WINTOOLButton7.height                  = 35
  $WINTOOLButton7.Enabled                 = $true
  $WINTOOLButton7.location                = New-Object System.Drawing.Point(20,255)
  $WINTOOLButton7.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

  $WINTOOLButton8                         = New-Object system.Windows.Forms.Button
  $WINTOOLButton8.text                    = "8"
  $WINTOOLButton8.width                   = 105
  $WINTOOLButton8.height                  = 35
  $WINTOOLButton8.Enabled                 = $true
  $WINTOOLButton8.location                = New-Object System.Drawing.Point(20,295)
  $WINTOOLButton8.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

  $WINTOOLButton9                         = New-Object system.Windows.Forms.Button
  $WINTOOLButton9.text                    = "9"
  $WINTOOLButton9.width                   = 105
  $WINTOOLButton9.height                  = 35
  $WINTOOLButton9.Enabled                 = $true
  $WINTOOLButton9.location                = New-Object System.Drawing.Point(20,335)
  $WINTOOLButton9.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

  $Form.controls.AddRange(@($WINTOOLButton1,$WINTOOLButton2,$WINTOOLButton3,$WINTOOLButton4,$WINTOOLButton5,$WINTOOLButton6,$WINTOOLButton7,$WINTOOLButton8,$WINTOOLButton9))

  [void]$Form.ShowDialog()

  $WINTOOLButton1.Add_Click({ autoupdate })

  $WINTOOLButton2.Add_Click({ remotedesktop })

  $WINTOOLButton3.Add_Click({ uac })

  $WINTOOLButton4.Add_Click({ websites })

  $WINTOOLButton5.Add_Click({ windefender })

  $WINTOOLButton6.Add_Click({ generalRegistry })

  $WINTOOLButton7.Add_Click({  })

  $WINTOOLButton8.Add_Click({  })

  $WINTOOLButton9.Add_Click({  })

    }
#Admin Tools
  function WINTOOL6 {
    Add-Type -AssemblyName System.Windows.Forms
    [System.Windows.Forms.Application]::EnableVisualStyles()
    
    $Form                                   = New-Object system.Windows.Forms.Form
    $Form.ClientSize                        = New-Object System.Drawing.Point(250,455)
    $Form.FormBorderStyle                   = 'Fixed3D'
    $Form.MaximizeBox                       = $false
    $Form.text                              = "WINTOOL"
    $Form.TopMost                           = $false
    
    $WINTOOLButton1                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton1.text                    = "Admin Tools"
    $WINTOOLButton1.width                   = 105
    $WINTOOLButton1.height                  = 35
    $WINTOOLButton1.Enabled                 = $true
    $WINTOOLButton1.location                = New-Object System.Drawing.Point(20,10)
    $WINTOOLButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
    
    $WINTOOLButton2                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton2.text                    = "Component Services"
    $WINTOOLButton2.width                   = 105
    $WINTOOLButton2.height                  = 35
    $WINTOOLButton2.Enabled                 = $true
    $WINTOOLButton2.location                = New-Object System.Drawing.Point(20,50)
    $WINTOOLButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
    
    $WINTOOLButton3                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton3.text                    = "Computer Management"
    $WINTOOLButton3.width                   = 105
    $WINTOOLButton3.height                  = 35
    $WINTOOLButton3.Enabled                 = $true
    $WINTOOLButton3.location                = New-Object System.Drawing.Point(20,90)
    $WINTOOLButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
    
    $WINTOOLButton4                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton4.text                    = "Defragment + Optimize Drives"
    $WINTOOLButton4.width                   = 105
    $WINTOOLButton4.height                  = 35
    $WINTOOLButton4.Enabled                 = $true
    $WINTOOLButton4.location                = New-Object System.Drawing.Point(20,130)
    $WINTOOLButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
    
    $WINTOOLButton5                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton5.text                    = "Disk Cleanup"
    $WINTOOLButton5.width                   = 105
    $WINTOOLButton5.height                  = 35
    $WINTOOLButton5.Enabled                 = $true
    $WINTOOLButton5.location                = New-Object System.Drawing.Point(20,170)
    $WINTOOLButton5.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
    
    $WINTOOLButton6                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton6.text                    = "Event Viewer"
    $WINTOOLButton6.width                   = 105
    $WINTOOLButton6.height                  = 35
    $WINTOOLButton6.Enabled                 = $true
    $WINTOOLButton6.location                = New-Object System.Drawing.Point(20,210)
    $WINTOOLButton6.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
    
    $WINTOOLButton7                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton7.text                    = "GPO Management"
    $WINTOOLButton7.width                   = 105
    $WINTOOLButton7.height                  = 35
    $WINTOOLButton7.Enabled                 = $true
    $WINTOOLButton7.location                = New-Object System.Drawing.Point(20,250)
    $WINTOOLButton7.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
    
    $WINTOOLButton8                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton8.text                    = "iSCSI Initiator"
    $WINTOOLButton8.width                   = 105
    $WINTOOLButton8.height                  = 35
    $WINTOOLButton8.Enabled                 = $true
    $WINTOOLButton8.location                = New-Object System.Drawing.Point(20,290)
    $WINTOOLButton8.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
    
    $WINTOOLButton9                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton9.text                    = "Local Security Policy"
    $WINTOOLButton9.width                   = 105
    $WINTOOLButton9.height                  = 35
    $WINTOOLButton9.Enabled                 = $true
    $WINTOOLButton9.location                = New-Object System.Drawing.Point(20,330)
    $WINTOOLButton9.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
    
    $WINTOOLButton10                        = New-Object system.Windows.Forms.Button
    $WINTOOLButton10.text                   = "ODBC Data 32"
    $WINTOOLButton10.width                  = 105
    $WINTOOLButton10.height                 = 35
    $WINTOOLButton10.Enabled                = $true
    $WINTOOLButton10.location               = New-Object System.Drawing.Point(20,370)
    $WINTOOLButton10.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
    
    $WINTOOLButton11                        = New-Object system.Windows.Forms.Button
    $WINTOOLButton11.text                   = "ODBC Data 64"
    $WINTOOLButton11.width                  = 105
    $WINTOOLButton11.height                 = 35
    $WINTOOLButton11.Enabled                = $true
    $WINTOOLButton11.location               = New-Object System.Drawing.Point(20,410)
    $WINTOOLButton11.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
    
    $WINTOOLButton12                        = New-Object system.Windows.Forms.Button
    $WINTOOLButton12.text                   = "Preformance Monitor"
    $WINTOOLButton12.width                  = 105
    $WINTOOLButton12.height                 = 35
    $WINTOOLButton12.Enabled                = $true
    $WINTOOLButton12.location               = New-Object System.Drawing.Point(130,10)
    $WINTOOLButton12.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
  
    $WINTOOLButton13                        = New-Object system.Windows.Forms.Button
    $WINTOOLButton13.text                   = "Print Management"
    $WINTOOLButton13.width                  = 105
    $WINTOOLButton13.height                 = 35
    $WINTOOLButton13.Enabled                = $true
    $WINTOOLButton13.location               = New-Object System.Drawing.Point(130,50)
    $WINTOOLButton13.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
    
    $WINTOOLButton14                        = New-Object system.Windows.Forms.Button
    $WINTOOLButton14.text                   = "Recovery Drive"
    $WINTOOLButton14.width                  = 105
    $WINTOOLButton14.height                 = 35
    $WINTOOLButton14.Enabled                = $true
    $WINTOOLButton14.location               = New-Object System.Drawing.Point(130,90)
    $WINTOOLButton14.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
    
    $WINTOOLButton15                        = New-Object system.Windows.Forms.Button
    $WINTOOLButton15.text                   = "Regedit"
    $WINTOOLButton15.width                  = 105
    $WINTOOLButton15.height                 = 35
    $WINTOOLButton15.Enabled                = $true
    $WINTOOLButton15.location               = New-Object System.Drawing.Point(130,130)
    $WINTOOLButton15.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
    
    $WINTOOLButton16                        = New-Object system.Windows.Forms.Button
    $WINTOOLButton16.text                   = "Resource Monitor"
    $WINTOOLButton16.width                  = 105
    $WINTOOLButton16.height                 = 35
    $WINTOOLButton16.Enabled                = $true
    $WINTOOLButton16.location               = New-Object System.Drawing.Point(130,170)
    $WINTOOLButton16.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
  
    $WINTOOLButton17                        = New-Object system.Windows.Forms.Button
    $WINTOOLButton17.text                   = "Services"
    $WINTOOLButton17.width                  = 105
    $WINTOOLButton17.height                 = 35
    $WINTOOLButton17.Enabled                = $true
    $WINTOOLButton17.location               = New-Object System.Drawing.Point(130,210)
    $WINTOOLButton17.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
    
    $WINTOOLButton18                        = New-Object system.Windows.Forms.Button
    $WINTOOLButton18.text                   = "System Configuration"
    $WINTOOLButton18.width                  = 105
    $WINTOOLButton18.height                 = 35
    $WINTOOLButton18.Enabled                = $true
    $WINTOOLButton18.location               = New-Object System.Drawing.Point(130,250)
    $WINTOOLButton18.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
    
    $WINTOOLButton19                        = New-Object system.Windows.Forms.Button 
    $WINTOOLButton19.text                   = "System Information"
    $WINTOOLButton19.width                  = 105
    $WINTOOLButton19.height                 = 35
    $WINTOOLButton19.Enabled                = $true
    $WINTOOLButton19.location               = New-Object System.Drawing.Point(130,290)
    $WINTOOLButton19.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
    
    $WINTOOLButton20                        = New-Object system.Windows.Forms.Button
    $WINTOOLButton20.text                   = "Task Scheduler"
    $WINTOOLButton20.width                  = 105
    $WINTOOLButton20.height                 = 35
    $WINTOOLButton20.Enabled                = $true
    $WINTOOLButton20.location               = New-Object System.Drawing.Point(130,330)
    $WINTOOLButton20.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
    
    $WINTOOLButton21                        = New-Object system.Windows.Forms.Button
    $WINTOOLButton21.text                   = "Windows Firewall"
    $WINTOOLButton21.width                  = 105
    $WINTOOLButton21.height                 = 35
    $WINTOOLButton21.Enabled                = $true
    $WINTOOLButton21.location               = New-Object System.Drawing.Point(130,370)
    $WINTOOLButton21.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
    
    $WINTOOLButton22                        = New-Object system.Windows.Forms.Button
    $WINTOOLButton22.text                   = "Memory Diagnostic"
    $WINTOOLButton22.width                  = 105
    $WINTOOLButton22.height                 = 35
    $WINTOOLButton22.Enabled                = $true
    $WINTOOLButton22.location               = New-Object System.Drawing.Point(130,410)
    $WINTOOLButton22.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)  
    
    
    $Form.controls.AddRange(@($WINTOOLButton1,$WINTOOLButton2,$WINTOOLButton3,$WINTOOLButton4,$WINTOOLButton5,
    $WINTOOLButton6,$WINTOOLButton7,$WINTOOLButton8,$WINTOOLButton9,$WINTOOLButton10,$WINTOOLButton11,$WINTOOLButton12,
    $WINTOOLButton13,$WINTOOLButton14,$WINTOOLButton15,$WINTOOLButton16,$WINTOOLButton17,$WINTOOLButton18,$WINTOOLButton19,
    $WINTOOLButton20,$WINTOOLButton21,$WINTOOLButton22      
    ))

    $WINTOOLButton1.Add_Click({ Show-ControlPanelItem -Name "Administrative Tools"})
    
    $WINTOOLButton2.Add_Click({ Start-Process comexp.msc })
    
    $WINTOOLButton3.Add_Click({ Start-Process compmgmt.msc })
    
    $WINTOOLButton4.Add_Click({ Start-Process dfrgui.exe })
    
    $WINTOOLButton5.Add_Click({ Start-Process cleanmgr.exe })
    
    $WINTOOLButton6.Add_Click({ Start-Process eventvwr.msc })
    
    $WINTOOLButton7.Add_Click({ Start-Process gpmc.msc 
      PowerShell -NoProfile -NonInteractive -Command [reflection.assembly]::loadwithpartialname(''); [system.Windows.Forms.MessageBox]::show('reminder: buy milk')
    })
    
    $WINTOOLButton8.Add_Click({ Start-Process iscsicpl.exe })
    
    $WINTOOLButton9.Add_Click({ Start-Process secpol.msc })
    
    $WINTOOLButton10.Add_Click({ Start-Process odbcad32.exe })

    $WINTOOLButton11.Add_Click({ Start-Process odbcad32.exe })

    $WINTOOLButton12.Add_Click({ Start-Process perfmon.msc })

    $WINTOOLButton13.Add_Click({ Start-Process perfmon.msc })

    $WINTOOLButton14.Add_Click({ Start-Process RecoveryDrive.exe })

    $WINTOOLButton15.Add_Click({ Start-Process regedit.exe })

    $WINTOOLButton16.Add_Click({ Start-Process perfmon.exe })

    $WINTOOLButton17.Add_Click({ Start-Process services.msc })

    $WINTOOLButton18.Add_Click({ Start-Process msconfig.exe  })

    $WINTOOLButton19.Add_Click({ Start-Process msinfo32.exe })

    $WINTOOLButton20.Add_Click({ Start-Process taskschd.msc })

    $WINTOOLButton21.Add_Click({ Start-Process WF.msc })

    $WINTOOLButton22.Add_Click({ Start-Process MdSched.exe })
    
    
    [void]$Form.ShowDialog()
    }
#Main GUI
  function MainWINTOOL {
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                                   = New-Object system.Windows.Forms.Form
$Form.ClientSize                        = New-Object System.Drawing.Point(145,260)
$Form.FormBorderStyle                   = 'Fixed3D'
$Form.MaximizeBox                       = $false
$Form.text                              = "WINTOOL"
$Form.TopMost                           = $false                

$WINTOOLButton1                         = New-Object system.Windows.Forms.Button
$WINTOOLButton1.text                    = "Download Essental"
$WINTOOLButton1.width                   = 105
$WINTOOLButton1.height                  = 35
$WINTOOLButton1.Enabled                 = $true
$WINTOOLButton1.location                = New-Object System.Drawing.Point(20,15)
$WINTOOLButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$WINTOOLButton2                         = New-Object system.Windows.Forms.Button
$WINTOOLButton2.text                    = "Logs and Values"
$WINTOOLButton2.width                   = 105
$WINTOOLButton2.height                  = 35
$WINTOOLButton2.Enabled                 = $true
$WINTOOLButton2.location                = New-Object System.Drawing.Point(20,55)
$WINTOOLButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$WINTOOLButton3                         = New-Object system.Windows.Forms.Button
$WINTOOLButton3.text                    = "Modify Windows Settings"
$WINTOOLButton3.width                   = 105
$WINTOOLButton3.height                  = 35
$WINTOOLButton3.Enabled                 = $true
$WINTOOLButton3.location                = New-Object System.Drawing.Point(20,95)
$WINTOOLButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$WINTOOLButton4                         = New-Object system.Windows.Forms.Button
$WINTOOLButton4.text                    = "RandomStuff"
$WINTOOLButton4.width                   = 105
$WINTOOLButton4.height                  = 35
$WINTOOLButton4.Enabled                 = $true
$WINTOOLButton4.location                = New-Object System.Drawing.Point(20,135)
$WINTOOLButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$WINTOOLButton5                         = New-Object system.Windows.Forms.Button
$WINTOOLButton5.text                    = "Registry"
$WINTOOLButton5.width                   = 105
$WINTOOLButton5.height                  = 35
$WINTOOLButton5.Enabled                 = $true
$WINTOOLButton5.location                = New-Object System.Drawing.Point(20,175)
$WINTOOLButton5.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$WINTOOLButton6                         = New-Object system.Windows.Forms.Button
$WINTOOLButton6.text                    = "Admin Tools"
$WINTOOLButton6.width                   = 105
$WINTOOLButton6.height                  = 35
$WINTOOLButton6.Enabled                 = $true
$WINTOOLButton6.location                = New-Object System.Drawing.Point(20,215)
$WINTOOLButton6.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)


$Form.controls.AddRange(@($WINTOOLButton1,$WINTOOLButton2,$WINTOOLButton3,$WINTOOLButton4,$WINTOOLButton5,$WINTOOLButton6))


$WINTOOLButton1.Add_Click({ WINTOOL1 })

$WINTOOLButton2.Add_Click({ WINTOOL2 })

$WINTOOLButton3.Add_Click({ WINTOOL3 })

$WINTOOLButton4.Add_Click({ WINTOOL4 })

$WINTOOLButton5.Add_Click({ WINTOOL5 })

$WINTOOLButton6.Add_Click({ WINTOOL6 })

[void]$Form.ShowDialog()
    }
MainWINTOOL
} 
WINTOOLScript