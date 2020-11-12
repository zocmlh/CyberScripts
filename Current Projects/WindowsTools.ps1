#Main WINTOOL Script


#Ask for admin perms 
Start-Process powershell.exe -Verb runAs -WindowStyle Hidden
Function WINTOOLScript{
  function WINTOOL1 {
    #Download essental programs
    Get-WindowsCapability -Name RSAT* -Online | Add-WindowsCapability -Online
    Start-Process https://git-scm.co
  }
    function WINTOOL2 {
      Add-Type -AssemblyName System.Windows.Forms
      [System.Windows.Forms.Application]::EnableVisualStyles()

      $Form                                   = New-Object system.Windows.Forms.Form
      $Form.ClientSize                        = New-Object System.Drawing.Point(145,75)
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
      $WINTOOLButton2.text                    = "2"
      $WINTOOLButton2.width                   = 105
      $WINTOOLButton2.height                  = 35
      $WINTOOLButton2.Enabled                 = $true
      $WINTOOLButton2.location                = New-Object System.Drawing.Point(20,15)
      $WINTOOLButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

      $WINTOOLButton3                         = New-Object system.Windows.Forms.Button
      $WINTOOLButton3.text                    = "3"
      $WINTOOLButton3.width                   = 105
      $WINTOOLButton3.height                  = 35
      $WINTOOLButton3.Enabled                 = $true
      $WINTOOLButton3.location                = New-Object System.Drawing.Point(20,15)
      $WINTOOLButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

      $WINTOOLButton4                         = New-Object system.Windows.Forms.Button
      $WINTOOLButton4.text                    = "4"
      $WINTOOLButton4.width                   = 105
      $WINTOOLButton4.height                  = 35
      $WINTOOLButton4.Enabled                 = $true
      $WINTOOLButton4.location                = New-Object System.Drawing.Point(20,15)
      $WINTOOLButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

      $WINTOOLButton5                         = New-Object system.Windows.Forms.Button
      $WINTOOLButton5.text                    = "5"
      $WINTOOLButton5.width                   = 105
      $WINTOOLButton5.height                  = 35
      $WINTOOLButton5.Enabled                 = $true
      $WINTOOLButton5.location                = New-Object System.Drawing.Point(20,15)
      $WINTOOLButton5.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

      $Form.controls.AddRange(@($WINTOOLButton1,$WINTOOLButton2,$WINTOOLButton3,$WINTOOLButton4,$WINTOOLButton5))

      $WINTOOLButton1.Add_Click({  })

      $WINTOOLButton2.Add_Click({  })

      $WINTOOLButton3.Add_Click({  })

      $WINTOOLButton4.Add_Click({  })

      $WINTOOLButton5.Add_Click({  })

      [void]$Form.ShowDialog()
  }
  function WINTOOL3 {
      Add-Type -AssemblyName System.Windows.Forms
      [System.Windows.Forms.Application]::EnableVisualStyles()
      
      $Form                                   = New-Object system.Windows.Forms.Form
      $Form.ClientSize                        = New-Object System.Drawing.Point(145,145)
      $Form.FormBorderStyle                   = 'Fixed3D'
      $Form.MaximizeBox                       = $false
      $Form.text                              = "WINTOOL"
      $Form.TopMost                           = $false
      
      $WINTOOLButton1                         = New-Object system.Windows.Forms.Button
      $WINTOOLButton1.text                    = "1"
      $WINTOOLButton1.width                   = 110
      $WINTOOLButton1.height                  = 35
      $WINTOOLButton1.enabled                 = $true
      $WINTOOLButton1.location                = New-Object System.Drawing.Point(20,15)
      $WINTOOLButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
      
      $WINTOOLButton2                         = New-Object system.Windows.Forms.Button
      $WINTOOLButton2.text                    = "2"
      $WINTOOLButton2.width                   = 110
      $WINTOOLButton2.height                  = 35
      $WINTOOLButton2.Enabled                 = $true
      $WINTOOLButton2.location                = New-Object System.Drawing.Point(20,55)
      $WINTOOLButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
      
      $WINTOOLButton3                         = New-Object system.Windows.Forms.Button
      $WINTOOLButton3.text                    = "3"
      $WINTOOLButton3.width                   = 110
      $WINTOOLButton3.height                  = 35
      $WINTOOLButton3.Enabled                 = $true
      $WINTOOLButton3.location                = New-Object System.Drawing.Point(20,95)
      $WINTOOLButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

      $Form.controls.AddRange(@($WINTOOLButton1,$WINTOOLButton2,$WINTOOLButton3))

      [void]$Form.ShowDialog()

      $WINTOOLButton1.Add_Click({  })
      $WINTOOLButton2.Add_Click({  })
      $WINTOOLButton3.Add_Click({  })
  }
  function WINTOOL4 {
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
    $WINTOOLButton2.text                    = "2"
    $WINTOOLButton2.width                   = 105
    $WINTOOLButton2.height                  = 35
    $WINTOOLButton2.Enabled                 = $true
    $WINTOOLButton2.location                = New-Object System.Drawing.Point(20,55)
    $WINTOOLButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $WINTOOLButton3                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton3.text                    = "3"
    $WINTOOLButton3.width                   = 105
    $WINTOOLButton3.height                  = 35
    $WINTOOLButton3.Enabled                 = $true
    $WINTOOLButton3.location                = New-Object System.Drawing.Point(20,95)
    $WINTOOLButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $WINTOOLButton4                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton4.text                    = "4"
    $WINTOOLButton4.width                   = 105
    $WINTOOLButton4.height                  = 35
    $WINTOOLButton4.Enabled                 = $true
    $WINTOOLButton4.location                = New-Object System.Drawing.Point(20,135)
    $WINTOOLButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $WINTOOLButton5                         = New-Object system.Windows.Forms.Button
    $WINTOOLButton5.text                    = "5"
    $WINTOOLButton5.width                   = 105
    $WINTOOLButton5.height                  = 35
    $WINTOOLButton5.Enabled                 = $true
    $WINTOOLButton5.location                = New-Object System.Drawing.Point(20,175)
    $WINTOOLButton5.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)


    $Form.controls.AddRange(@($WINTOOLButton1,$WINTOOLButton2,$WINTOOLButton3,$WINTOOLButton4,$WINTOOLButton5))


    $WINTOOLButton1.Add_Click({  })

    $WINTOOLButton2.Add_Click({  })

    $WINTOOLButton3.Add_Click({  })

    $WINTOOLButton4.Add_Click({  })

    $WINTOOLButton5.Add_Click({  })

    [void]$Form.ShowDialog()
}
function WINTOOL5 {
  Add-Type -AssemblyName System.Windows.Forms
  [System.Windows.Forms.Application]::EnableVisualStyles()

  $Form                                   = New-Object system.Windows.Forms.Form
  $Form.ClientSize                        = New-Object System.Drawing.Point(145,385)
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
  $WINTOOLButton2.text                    = "2"
  $WINTOOLButton2.width                   = 105
  $WINTOOLButton2.height                  = 35
  $WINTOOLButton2.Enabled                 = $true
  $WINTOOLButton2.location                = New-Object System.Drawing.Point(20,55)
  $WINTOOLButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

  $WINTOOLButton3                         = New-Object system.Windows.Forms.Button
  $WINTOOLButton3.text                    = "3"
  $WINTOOLButton3.width                   = 105
  $WINTOOLButton3.height                  = 35
  $WINTOOLButton3.Enabled                 = $true
  $WINTOOLButton3.location                = New-Object System.Drawing.Point(20,95)
  $WINTOOLButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

  $WINTOOLButton4                         = New-Object system.Windows.Forms.Button
  $WINTOOLButton4.text                    = "4"
  $WINTOOLButton4.width                   = 105
  $WINTOOLButton4.height                  = 35
  $WINTOOLButton4.Enabled                 = $true
  $WINTOOLButton4.location                = New-Object System.Drawing.Point(20,135)
  $WINTOOLButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

  $WINTOOLButton5                         = New-Object system.Windows.Forms.Button
  $WINTOOLButton5.text                    = "5"
  $WINTOOLButton5.width                   = 105
  $WINTOOLButton5.height                  = 35
  $WINTOOLButton5.Enabled                 = $true
  $WINTOOLButton5.location                = New-Object System.Drawing.Point(20,175)
  $WINTOOLButton5.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

  $WINTOOLButton6                         = New-Object system.Windows.Forms.Button
  $WINTOOLButton6.text                    = "6"
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

  $WINTOOLButton1.Add_Click({  })

  $WINTOOLButton2.Add_Click({  })

  $WINTOOLButton3.Add_Click({  })

  $WINTOOLButton4.Add_Click({  })

  $WINTOOLButton5.Add_Click({  })

  $WINTOOLButton6.Add_Click({  })

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
    
    $WINTOOLButton7.Add_Click({ Start-Process gpmc.msc })
    
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
$WINTOOLButton3.text                    = "3"
$WINTOOLButton3.width                   = 105
$WINTOOLButton3.height                  = 35
$WINTOOLButton3.Enabled                 = $true
$WINTOOLButton3.location                = New-Object System.Drawing.Point(20,95)
$WINTOOLButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$WINTOOLButton4                         = New-Object system.Windows.Forms.Button
$WINTOOLButton4.text                    = "4"
$WINTOOLButton4.width                   = 105
$WINTOOLButton4.height                  = 35
$WINTOOLButton4.Enabled                 = $true
$WINTOOLButton4.location                = New-Object System.Drawing.Point(20,135)
$WINTOOLButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$WINTOOLButton5                         = New-Object system.Windows.Forms.Button
$WINTOOLButton5.text                    = "5"
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