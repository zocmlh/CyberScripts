#Main WINTOOL Script
Function WINTOOLScript{
    
 
    function WINTOOL1 {
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

      $Form.controls.AddRange(@($WINTOOLButton1))

      $WINTOOLButton1.Add_Click({ })

      [void]$Form.ShowDialog()
  }
  function WINTOOL2 {
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
  function WINTOOL3 {
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
function WINTOOL4 {
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
  function WINTOOL5 {
      Add-Type -AssemblyName System.Windows.Forms
      [System.Windows.Forms.Application]::EnableVisualStyles()
  
      $Form                               = New-Object system.Windows.Forms.Form
      $Form.ClientSize                    = New-Object System.Drawing.Point(285,225)
      $Form.FormBorderStyle               = 'Fixed3D'
      $Form.MaximizeBox                   = $false
      $Form.text                          = "WINTOOL"
      $Form.TopMost                       = $false
  
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
      $WINTOOLButton5.location                = New-Object System.Drawing.Point(90,175)
      $WINTOOLButton5.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
  
      $WINTOOLButton6                         = New-Object system.Windows.Forms.Button
      $WINTOOLButton6.text                    = "6"
      $WINTOOLButton6.width                   = 105
      $WINTOOLButton6.height                  = 35
      $WINTOOLButton6.Enabled                 = $true
      $WINTOOLButton6.location                = New-Object System.Drawing.Point(160,15)
      $WINTOOLButton6.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
  
      $WINTOOLButton7                         = New-Object system.Windows.Forms.Button
      $WINTOOLButton7.text                    = "7"
      $WINTOOLButton7.width                   = 105
      $WINTOOLButton7.height                  = 35
      $WINTOOLButton7.Enabled                 = $true
      $WINTOOLButton7.location                = New-Object System.Drawing.Point(160,55)
      $WINTOOLButton7.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
  
      $WINTOOLButton8                         = New-Object system.Windows.Forms.Button
      $WINTOOLButton8.text                    = "8"
      $WINTOOLButton8.width                   = 105
      $WINTOOLButton8.height                  = 35
      $WINTOOLButton8.Enabled                 = $true
      $WINTOOLButton8.location                = New-Object System.Drawing.Point(160,95)
      $WINTOOLButton8.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
  
      $WINTOOLButton9                         = New-Object system.Windows.Forms.Button
      $WINTOOLButton9.text                    = "9"
      $WINTOOLButton9.width                   = 105
      $WINTOOLButton9.height                  = 35
      $WINTOOLButton9.Enabled                 = $true
      $WINTOOLButton9.location                = New-Object System.Drawing.Point(160,135)
      $WINTOOLButton9.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
     
      $Form.controls.AddRange(@($WINTOOLButton1,$WINTOOLButton2,$WINTOOLButton3,$WINTOOLButton4,$WINTOOLButton5,$WINTOOLButton6,$WINTOOLButton7,$WINTOOLButton8,$WINTOOLButton9))

      $WINTOOLButton1.Add_Click({  })
  
      $WINTOOLButton2.Add_Click({  })
  
      $WINTOOLButton3.Add_Click({  })
  
      $WINTOOLButton4.Add_Click({  })
  
      $WINTOOLButton5.Add_Click({  })
  
      $WINTOOLButton6.Add_Click({  })
  
      $WINTOOLButton7.Add_Click({  })
  
      $WINTOOLButton8.Add_Click({  })
  
      $WINTOOLButton9.Add_Click({  })
  
  
      [void]$Form.ShowDialog()
  }
#Main GUI
function MainWINTOOL {
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                               = New-Object system.Windows.Forms.Form
$Form.ClientSize                    = New-Object System.Drawing.Point(145,225)
$Form.FormBorderStyle               = 'Fixed3D'
$Form.MaximizeBox                   = $false
$Form.text                          = "WINTOOL"
$Form.TopMost                       = $false

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


$WINTOOLButton1.Add_Click({ WINTOOL1 })

$WINTOOLButton2.Add_Click({ WINTOOL2 })

$WINTOOLButton3.Add_Click({ WINTOOL3 })

$WINTOOLButton4.Add_Click({ WINTOOL4 })

$WINTOOLButton5.Add_Click({ WINTOOL5 })

[void]$Form.ShowDialog()
  }
MainWINTOOL
} #End Function
#Call Function
WINTOOLScript