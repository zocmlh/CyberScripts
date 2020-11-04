

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
        $PPButton.location                = New-Object System.Drawing.Point(20,20)
        $PPButton.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
        $ALButton                         = New-Object system.Windows.Forms.Button
        $ALButton.text                    = "Account Lockout Polices"
        $ALButton.width                   = 110
        $ALButton.height                  = 35
        $ALButton.Enabled                 = $true
        $ALButton.location                = New-Object System.Drawing.Point(160,20)
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
    #CIS 9: Windows Firewall with Advanced Security
        function DomainProfile {

        }
    #CIS 17: Advanced Audit Policy Configuration
        function AdavncedAuditPolicyConfig {

        }
    #CIS 18: Administrative Templates
        function AdministrativeTemplates {
            Add-Type -AssemblyName System.Windows.Forms
            [System.Windows.Forms.Application]::EnableVisualStyles()
        
            $Form                               = New-Object system.Windows.Forms.Form
            $Form.ClientSize                    = New-Object System.Drawing.Point(145,225)
            $Form.text                          = "CIS"
            $Form.TopMost                       = $false
        
            $ATButton1                         = New-Object system.Windows.Forms.Button
            $ATButton1.text                    = "1"
            $ATButton1.width                   = 105
            $ATButton1.height                  = 35
            $ATButton1.Enabled                 = $true
            $ATButton1.location                = New-Object System.Drawing.Point(20,15)
            $ATButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATButton2                         = New-Object system.Windows.Forms.Button
            $ATButton2.text                    = "2"
            $ATButton2.width                   = 105
            $ATButton2.height                  = 35
            $ATButton2.Enabled                 = $true
            $ATButton2.location                = New-Object System.Drawing.Point(20,55)
            $ATButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATButton3                         = New-Object system.Windows.Forms.Button
            $ATButton3.text                    = "3"
            $ATButton3.width                   = 105
            $ATButton3.height                  = 35
            $ATButton3.Enabled                 = $true
            $ATButton3.location                = New-Object System.Drawing.Point(20,95)
            $ATButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATButton4                         = New-Object system.Windows.Forms.Button
            $ATButton4.text                    = "4"
            $ATButton4.width                   = 105
            $ATButton4.height                  = 35
            $ATButton4.Enabled                 = $true
            $ATButton4.location                = New-Object System.Drawing.Point(20,135)
            $ATButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATButton4                         = New-Object system.Windows.Forms.Button
            $ATButton4.text                    = "5"
            $ATButton4.width                   = 105
            $ATButton4.height                  = 35
            $ATButton4.Enabled                 = $true
            $ATButton4.location                = New-Object System.Drawing.Point(20,175)
            $ATButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATButton6                         = New-Object system.Windows.Forms.Button
            $ATButton6.text                    = "6"
            $ATButton6.width                   = 105
            $ATButton6.height                  = 35
            $ATButton6.Enabled                 = $true
            $ATButton6.location                = New-Object System.Drawing.Point(160,15)
            $ATButton6.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATButton7                         = New-Object system.Windows.Forms.Button
            $ATButton7.text                    = "7"
            $ATButton7.width                   = 105
            $ATButton7.height                  = 35
            $ATButton7.Enabled                 = $true
            $ATButton7.location                = New-Object System.Drawing.Point(160,55)
            $ATButton7.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATButton8                         = New-Object system.Windows.Forms.Button
            $ATButton8.text                    = "8"
            $ATButton8.width                   = 105
            $ATButton8.height                  = 35
            $ATButton8.Enabled                 = $true
            $ATButton8.location                = New-Object System.Drawing.Point(160,95)
            $ATButton8.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATButton9                         = New-Object system.Windows.Forms.Button
            $ATButton9.text                    = "9"
            $ATButton9.width                   = 105
            $ATButton9.height                  = 35
            $ATButton9.Enabled                 = $true
            $ATButton9.location                = New-Object System.Drawing.Point(160,135)
            $ATButton9.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATButton10                        = New-Object system.Windows.Forms.Button
            $ATButton10.text                   = "10"
            $ATButton10.width                  = 105
            $ATButton10.height                 = 35
            $ATButton10.Enabled                = $true
            $ATButton10.location               = New-Object System.Drawing.Point(160,175)
            $ATButton10.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
           
           
            $Form.controls.AddRange(@($CISButton1,$CISButton2,$CISButton3,$CISButton4,$CISButton5))


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
        }
    
    #Main GUI
    function MainGUI {
    Add-Type -AssemblyName System.Windows.Forms
    [System.Windows.Forms.Application]::EnableVisualStyles()

    $Form                               = New-Object system.Windows.Forms.Form
    $Form.ClientSize                    = New-Object System.Drawing.Point(190,320)
    $Form.text                          = "CIS"
    $Form.TopMost                       = $false

    $CISButton1                         = New-Object system.Windows.Forms.Button
    $CISButton1.text                    = "Account Polices"
    $CISButton1.width                   = 105
    $CISButton1.height                  = 35
    $CISButton1.Enabled                 = $true
    $CISButton1.location                = New-Object System.Drawing.Point(40,15)
    $CISButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $CISButton2                         = New-Object system.Windows.Forms.Button
    $CISButton2.text                    = "Local Polices"
    $CISButton2.width                   = 105
    $CISButton2.height                  = 35
    $CISButton2.Enabled                 = $true
    $CISButton2.location                = New-Object System.Drawing.Point(40,55)
    $CISButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $CISButton3                         = New-Object system.Windows.Forms.Button
    $CISButton3.text                    = "System Services"
    $CISButton3.width                   = 105
    $CISButton3.height                  = 35
    $CISButton3.Enabled                 = $true
    $CISButton3.location                = New-Object System.Drawing.Point(40,95)
    $CISButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $CISButton4                         = New-Object system.Windows.Forms.Button
    $CISButton4.text                    = "4"
    $CISButton4.width                   = 105
    $CISButton4.height                  = 35
    $CISButton4.Enabled                 = $true
    $CISButton4.location                = New-Object System.Drawing.Point(40,135)
    $CISButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $CISButton5                         = New-Object system.Windows.Forms.Button
    $CISButton5.text                    = "5"
    $CISButton5.width                   = 105
    $CISButton5.height                  = 35
    $CISButton5.Enabled                 = $true
    $CISButton5.location                = New-Object System.Drawing.Point(40,175)
    $CISButton5.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $CISButton6                         = New-Object system.Windows.Forms.Button
    $CISButton6.text                    = "6"
    $CISButton6.width                   = 105
    $CISButton6.height                  = 35
    $CISButton6.Enabled                 = $true
    $CISButton6.location                = New-Object System.Drawing.Point(40,215)
    $CISButton6.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $CISButton7                         = New-Object system.Windows.Forms.Button
    $CISButton7.text                    = "7"
    $CISButton7.width                   = 105
    $CISButton7.height                  = 35
    $CISButton7.Enabled                 = $true
    $CISButton7.location                = New-Object System.Drawing.Point(40,255)
    $CISButton7.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)


    $Form.controls.AddRange(@($CISButton1,$CISButton2,$CISButton3,$CISButton4,$CISButton5,$CISButton6,$CISButton7))



    $CISButton1.Add_Click({ AccountPolices })

    $CISButton2.Add_Click({ LocalPolices })

    $CISButton3.Add_Click({ SystemServices })

    $CISButton4.Add_Click({ DomainProfile })

    $CISButton5.Add_Click({ AdministrativeTemplates })

    $CISButton6.Add_Click({  })

    $CISButton7.Add_Click({  })
    [void]$Form.ShowDialog()
}
MainGUI
} #End Function
#Call Function
CISScrtiptGUI