<#
.NAME
    CISScriptGUI
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                               = New-Object system.Windows.Forms.Form
$Form.ClientSize                    = New-Object System.Drawing.Point(270,225)
$Form.text                          = "Form"
$Form.TopMost                       = $false

$CISButton1                         = New-Object system.Windows.Forms.Button
$CISButton1.text                    = "1"
$CISButton1.width                   = 105
$CISButton1.height                  = 35
$CISButton1.location                = New-Object System.Drawing.Point(20,15)
$CISButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$CISButton2                         = New-Object system.Windows.Forms.Button
$CISButton2.text                    = "2"
$CISButton2.width                   = 105
$CISButton2.height                  = 35
$CISButton2.location                = New-Object System.Drawing.Point(20,55)
$CISButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$CISButton3                         = New-Object system.Windows.Forms.Button
$CISButton3.text                    = "3"
$CISButton3.width                   = 105
$CISButton3.height                  = 35
$CISButton3.location                = New-Object System.Drawing.Point(20,95)
$CISButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$CISButton4                         = New-Object system.Windows.Forms.Button
$CISButton4.text                    = "4"
$CISButton4.width                   = 105
$CISButton4.height                  = 35
$CISButton4.location                = New-Object System.Drawing.Point(20,135)
$CISButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$CISButton5                         = New-Object system.Windows.Forms.Button
$CISButton5.text                    = "5"
$CISButton5.width                   = 105
$CISButton5.height                  = 35
$CISButton5.location                = New-Object System.Drawing.Point(20,175)
$CISButton5.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$CISButton6                         = New-Object system.Windows.Forms.Button
$CISButton6.text                    = "6"
$CISButton6.width                   = 105
$CISButton6.height                  = 35
$CISButton6.location                = New-Object System.Drawing.Point(145,15)
$CISButton6.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$CISButton7                         = New-Object system.Windows.Forms.Button
$CISButton7.text                    = "7"
$CISButton7.width                   = 105
$CISButton7.height                  = 35
$CISButton7.location                = New-Object System.Drawing.Point(145,55)
$CISButton7.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$CISButton8                         = New-Object system.Windows.Forms.Button
$CISButton8.text                    = "8"
$CISButton8.width                   = 105
$CISButton8.height                  = 35
$CISButton8.location                = New-Object System.Drawing.Point(145,95)
$CISButton8.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)


$CISButton9                         = New-Object system.Windows.Forms.Button
$CISButton9.text                    = "9"
$CISButton9.width                   = 105
$CISButton9.height                  = 35
$CISButton9.location                = New-Object System.Drawing.Point(145,135)
$CISButton9.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$CISButton10                         = New-Object system.Windows.Forms.Button
$CISButton10.text                    = "10"
$CISButton10.width                   = 105
$CISButton10.height                  = 35
$CISButton10.location                = New-Object System.Drawing.Point(145,175)
$CISButton10.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Form.controls.AddRange(@($CISButton1,$CISButton2,$CISButton3,$CISButton4,$CISButton5,$CISButton6,$CISButton7,$CISButton8,$CISButton9,$CISButton10))

$CISButton1.Add_Click({  })
$CISButton1.Add_Click({  })
$CISButton3.Add_Click({  })
$CISButton4.Add_Click({  })
$CISButton5.Add_Click({  })
$CISButton6.Add_Click({  })
$CISButton7.Add_Click({  })
$CISButton8.Add_Click({  })
$CISButton9.Add_Click({  })
$CISButton10.Add_Click({  })