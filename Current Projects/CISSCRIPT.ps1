

#Main GUI Script
Function CISScrtiptGUI{
    #CIS 1: Account Polices
    function AccountPolices {
        Add-Type -AssemblyName System.Windows.Forms
        [System.Windows.Forms.Application]::EnableVisualStyles()
        
        $Form                            = New-Object system.Windows.Forms.Form
        $Form.ClientSize                 = New-Object System.Drawing.Point(285,89)
        $Form.text                       = "Account Polices"
        $Form.TopMost                    = $false
        
        $PPButton                         = New-Object system.Windows.Forms.Button
        $PPButton.text                    = "Password Polices"
        $PPButton.width                   = 110
        $PPButton.height                  = 35
        $PPButton.enabled                 = $true
        $PPButton.location                = New-Object System.Drawing.Point(24,23)
        $PPButton.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
        $ALButton                         = New-Object system.Windows.Forms.Button
        $ALButton.text                    = "Account Lockout Polices"
        $ALButton.width                   = 110
        $ALButton.height                  = 35
        $ALButton.Enabled                 = $true
        $ALButton.location                = New-Object System.Drawing.Point(159,23)
        $ALButton.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
        $Form.controls.AddRange(@($PPButton,$ALButton))
        [void]$Form.ShowDialog()
        $PPButton.Add_Click({  })
        $ALButton.Add_Click({  })
    }

    #CIS 2: Local Polices
        function LocalPolices {
            Add-Type -AssemblyName System.Windows.Forms
            [System.Windows.Forms.Application]::EnableVisualStyles()
            
            $Form                            = New-Object system.Windows.Forms.Form
            $Form.ClientSize                 = New-Object System.Drawing.Point(300,120)
            $Form.text                       = "Local Policies"
            $Form.TopMost                    = $false
            
            $APButton                         = New-Object system.Windows.Forms.Button
            $APButton.text                    = "Audit Policy"
            $APButton.width                   = 110
            $APButton.height                  = 35
            $APButton.enabled                 = $true
            $APButton.location                = New-Object System.Drawing.Point(20,20)
            $APButton.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
            
            $URAButton                         = New-Object system.Windows.Forms.Button
            $URAButton.text                    = "User Rights Assignment"
            $URAButton.width                   = 110
            $URAButton.height                  = 35
            $URAButton.Enabled                 = $true
            $URAButton.location                = New-Object System.Drawing.Point(160,20)
            $URAButton.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
            
            $SOButton                         = New-Object system.Windows.Forms.Button
            $SOButton.text                    = "Security Options"
            $SOButton.width                   = 110
            $SOButton.height                  = 35
            $SOButton.Enabled                 = $true
            $SOButton.location                = New-Object System.Drawing.Point(90,70)
            $SOButton.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $Form.controls.AddRange(@($APButton,$URAButton,$SOButton))
            [void]$Form.ShowDialog()
            $APButton.Add_Click({  })
            $URAButton.Add_Click({  })
            $APButton.Add_Click({  })
        }
    #CIS 5: System Services
        function SystemServices {
            Add-Type -AssemblyName System.Windows.Forms
            [System.Windows.Forms.Application]::EnableVisualStyles()
            
            $Form                            = New-Object system.Windows.Forms.Form
            $Form.ClientSize                 = New-Object System.Drawing.Point(285,80)
            $Form.text                       = "System Services"
            $Form.TopMost                    = $false
            
            $SSButton                         = New-Object system.Windows.Forms.Button
            $SSButton.text                    = "System Services"
            $SSButton.width                   = 110
            $SSButton.height                  = 35
            $SSButton.enabled                 = $true
            $SSButton.location                = New-Object System.Drawing.Point(90,20)
            $SSButton.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $Form.controls.AddRange(@($SSButton))
            [void]$Form.ShowDialog()
            $CISSystemServices.Add_Click({  })
        }
    Add-Type -AssemblyName System.Windows.Forms
    [System.Windows.Forms.Application]::EnableVisualStyles()

    $Form                               = New-Object system.Windows.Forms.Form
    $Form.ClientSize                    = New-Object System.Drawing.Point(270,225)
    $Form.text                          = "Form"
    $Form.TopMost                       = $false

    $CISButton1                         = New-Object system.Windows.Forms.Button
    $CISButton1.text                    = "Account Polices"
    $CISButton1.width                   = 105
    $CISButton1.height                  = 35
    $CISButton1.Enabled                 = $true
    $CISButton1.location                = New-Object System.Drawing.Point(20,15)
    $CISButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $CISButton2                         = New-Object system.Windows.Forms.Button
    $CISButton2.text                    = "Local Polices"
    $CISButton2.width                   = 105
    $CISButton2.height                  = 35
    $CISButton2.Enabled                 = $true
    $CISButton2.location                = New-Object System.Drawing.Point(20,55)
    $CISButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $CISButton3                         = New-Object system.Windows.Forms.Button
    $CISButton3.text                    = "System Services"
    $CISButton3.width                   = 105
    $CISButton3.height                  = 35
    $CISButton3.Enabled                 = $true
    $CISButton3.location                = New-Object System.Drawing.Point(20,95)
    $CISButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $CISButton4                         = New-Object system.Windows.Forms.Button
    $CISButton4.text                    = "4"
    $CISButton4.width                   = 105
    $CISButton4.height                  = 35
    $CISButton4.Enabled                 = $true
    $CISButton4.location                = New-Object System.Drawing.Point(20,135)
    $CISButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $CISButton5                         = New-Object system.Windows.Forms.Button
    $CISButton5.text                    = "5"
    $CISButton5.width                   = 105
    $CISButton5.height                  = 35
    $CISButton5.Enabled                 = $true
    $CISButton5.location                = New-Object System.Drawing.Point(20,175)
    $CISButton5.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $CISButton6                         = New-Object system.Windows.Forms.Button
    $CISButton6.text                    = "6"
    $CISButton6.width                   = 105
    $CISButton6.height                  = 35
    $CISButton6.Enabled                 = $true
    $CISButton6.location                = New-Object System.Drawing.Point(145,15)
    $CISButton6.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $CISButton7                         = New-Object system.Windows.Forms.Button
    $CISButton7.text                    = "7"
    $CISButton7.width                   = 105
    $CISButton7.height                  = 35
    $CISButton7.Enabled                 = $true
    $CISButton7.location                = New-Object System.Drawing.Point(145,55)
    $CISButton7.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $CISButton8                         = New-Object system.Windows.Forms.Button
    $CISButton8.text                    = "8"
    $CISButton8.width                   = 105
    $CISButton8.height                  = 35
    $CISButton8.Enabled                 = $true
    $CISButton8.location                = New-Object System.Drawing.Point(145,95)
    $CISButton8.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)


    $CISButton9                         = New-Object system.Windows.Forms.Button
    $CISButton9.text                    = "9"
    $CISButton9.width                   = 105
    $CISButton9.height                  = 35
    $CISButton9.Enabled                 = $true
    $CISButton9.location                = New-Object System.Drawing.Point(145,135)
    $CISButton9.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $CISButton10                         = New-Object system.Windows.Forms.Button
    $CISButton10.text                    = "10"
    $CISButton10.width                   = 105
    $CISButton10.height                  = 35
    $CISButton10.Enabled                 = $true
    $CISButton10.location                = New-Object System.Drawing.Point(145,175)
    $CISButton10.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $Form.controls.AddRange(@($CISButton1,$CISButton2,$CISButton3,$CISButton4,$CISButton5,$CISButton6,$CISButton7,$CISButton8,$CISButton9,$CISButton10))



    $CISButton1.Add_Click({ AccountPolices })

    $CISButton2.Add_Click({ LocalPolices })

    $CISButton3.Add_Click({ SystemServices })

    $CISButton4.Add_Click({ 

    })

    $CISButton5.Add_Click({ 

    })

    $CISButton6.Add_Click({

    })

    $CISButton7.Add_Click({ 

    })

    $CISButton8.Add_Click({  

    })

    $CISButton9.Add_Click({  

    })

    $CISButton10.Add_Click({ 

    })


    [void]$Form.ShowDialog()
} #End Function
#Call Function
CISScrtiptGUI