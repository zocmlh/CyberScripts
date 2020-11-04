

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
            $Form.text                       = "Loc"
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
        function WindowsFirewall {
            Add-Type -AssemblyName System.Windows.Forms
            [System.Windows.Forms.Application]::EnableVisualStyles()
            
            $Form                            = New-Object system.Windows.Forms.Form
            $Form.ClientSize                 = New-Object System.Drawing.Point(300,120)
            $Form.text                       = "CIS"
            $Form.TopMost                    = $false
            
            $DPButton                         = New-Object system.Windows.Forms.Button
            $DPButton.text                    = "Domain Profile"
            $DPButton.width                   = 110
            $DPButton.height                  = 35
            $DPButton.enabled                 = $true
            $DPButton.location                = New-Object System.Drawing.Point(20,20)
            $DPButton.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
            
            $PPButton                         = New-Object system.Windows.Forms.Button
            $PPButton.text                    = "Private Profile"
            $PPButton.width                   = 110
            $PPButton.height                  = 35
            $PPButton.Enabled                 = $true
            $PPButton.location                = New-Object System.Drawing.Point(160,20)
            $PPButton.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
            
            $PUBPButton                         = New-Object system.Windows.Forms.Button
            $PUBPButton.text                    = "Public Proflie"
            $PUBPButton.width                   = 110
            $PUBPButton.height                  = 35
            $PUBPButton.Enabled                 = $true
            $PUBPButton.location                = New-Object System.Drawing.Point(90,70)
            $PUBPButton.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $Form.controls.AddRange(@($DPButton,$PPButton,$PUBPButton))

            [void]$Form.ShowDialog()

            $APButton.Add_Click({  })
            $URAButton.Add_Click({  })
            $APButton.Add_Click({  })
        }
    #CIS 17: Advanced Audit Policy Configuration
        function AdavncedAuditPolicyConfig {
            Add-Type -AssemblyName System.Windows.Forms
            [System.Windows.Forms.Application]::EnableVisualStyles()

            $Form                               = New-Object system.Windows.Forms.Form
            $Form.ClientSize                    = New-Object System.Drawing.Point(145,225)
            $Form.text                          = "CIS"
            $Form.TopMost                       = $false

            $AAPCButton1                         = New-Object system.Windows.Forms.Button
            $AAPCButton1.text                    = "Account Logon"
            $AAPCButton1.width                   = 105
            $AAPCButton1.height                  = 35
            $AAPCButton1.Enabled                 = $true
            $AAPCButton1.location                = New-Object System.Drawing.Point(20,15)
            $AAPCButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $AAPCButton2                         = New-Object system.Windows.Forms.Button
            $AAPCButton2.text                    = "Account Management"
            $AAPCButton2.width                   = 105
            $AAPCButton2.height                  = 35
            $AAPCButton2.Enabled                 = $true
            $AAPCButton2.location                = New-Object System.Drawing.Point(20,55)
            $AAPCButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $AAPCButton3                         = New-Object system.Windows.Forms.Button
            $AAPCButton3.text                    = "Detailed Tracking"
            $AAPCButton3.width                   = 105
            $AAPCButton3.height                  = 35
            $AAPCButton3.Enabled                 = $true
            $AAPCButton3.location                = New-Object System.Drawing.Point(20,95)
            $AAPCButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $AAPCButton4                         = New-Object system.Windows.Forms.Button
            $AAPCButton4.text                    = "DS Acess"
            $AAPCButton4.width                   = 105
            $AAPCButton4.height                  = 35
            $AAPCButton4.Enabled                 = $true
            $AAPCButton4.location                = New-Object System.Drawing.Point(20,135)
            $AAPCButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $AAPCButton4                         = New-Object system.Windows.Forms.Button
            $AAPCButton4.text                    = "Logon/Logoff"
            $AAPCButton4.width                   = 105
            $AAPCButton4.height                  = 35
            $AAPCButton4.Enabled                 = $true
            $AAPCButton4.location                = New-Object System.Drawing.Point(20,175)
            $AAPCButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $AAPCButton6                         = New-Object system.Windows.Forms.Button
            $AAPCButton6.text                    = "Object Acess"
            $AAPCButton6.width                   = 105
            $AAPCButton6.height                  = 35
            $AAPCButton6.Enabled                 = $true
            $AAPCButton6.location                = New-Object System.Drawing.Point(160,15)
            $AAPCButton6.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $AAPCButton7                         = New-Object system.Windows.Forms.Button
            $AAPCButton7.text                    = "Policy Change"
            $AAPCButton7.width                   = 105
            $AAPCButton7.height                  = 35
            $AAPCButton7.Enabled                 = $true
            $AAPCButton7.location                = New-Object System.Drawing.Point(160,55)
            $AAPCButton7.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $AAPCButton8                         = New-Object system.Windows.Forms.Button
            $AAPCButton8.text                    = "Privilege Use"
            $AAPCButton8.width                   = 105
            $AAPCButton8.height                  = 35
            $AAPCButton8.Enabled                 = $true
            $AAPCButton8.location                = New-Object System.Drawing.Point(160,95)
            $AAPCButton8.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $AAPCButton9                         = New-Object system.Windows.Forms.Button
            $AAPCButton9.text                    = "System"
            $AAPCButton9.width                   = 105
            $AAPCButton9.height                  = 35
            $AAPCButton9.Enabled                 = $true
            $AAPCButton9.location                = New-Object System.Drawing.Point(160,135)
            $AAPCButton9.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $Form.controls.AddRange(@($AAPCButton1,$AAPCButton2,$AAPCButton3,$AAPCButton4,$AAPCButton5,$AAPCButton6,$AAPCButton7,$AAPCButton8,$AAPCButton9))


            $AAPCButton1.Add_Click({  })

            $AAPCButton2.Add_Click({  })

            $AAPCButton3.Add_Click({  })

            $AAPCButton4.Add_Click({  })

            $AAPCButton5.Add_Click({  })

            $AAPCButton6.Add_Click({  })

            $AAPCButton7.Add_Click({  })

            $AAPCButton8.Add_Click({  })

            $AAPCButton9.Add_Click({  })
        }
    #CIS 18: Administrative Templates (Computer)
        function AdministrativeTemplatesComputer {
            Add-Type -AssemblyName System.Windows.Forms
            [System.Windows.Forms.Application]::EnableVisualStyles()
        
            $Form                               = New-Object system.Windows.Forms.Form
            $Form.ClientSize                    = New-Object System.Drawing.Point(145,225)
            $Form.text                          = "CIS"
            $Form.TopMost                       = $false
        
            $ATCButton1                         = New-Object system.Windows.Forms.Button
            $ATCButton1.text                    = "1"
            $ATCButton1.width                   = 105
            $ATCButton1.height                  = 35
            $ATCButton1.Enabled                 = $true
            $ATCButton1.location                = New-Object System.Drawing.Point(20,15)
            $ATCButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATCButton2                         = New-Object system.Windows.Forms.Button
            $ATCButton2.text                    = "2"
            $ATCButton2.width                   = 105
            $ATCButton2.height                  = 35
            $ATCButton2.Enabled                 = $true
            $ATCButton2.location                = New-Object System.Drawing.Point(20,55)
            $ATCButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATCButton3                         = New-Object system.Windows.Forms.Button
            $ATCButton3.text                    = "3"
            $ATCButton3.width                   = 105
            $ATCButton3.height                  = 35
            $ATCButton3.Enabled                 = $true
            $ATCButton3.location                = New-Object System.Drawing.Point(20,95)
            $ATCButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATCButton4                         = New-Object system.Windows.Forms.Button
            $ATCButton4.text                    = "4"
            $ATCButton4.width                   = 105
            $ATCButton4.height                  = 35
            $ATCButton4.Enabled                 = $true
            $ATCButton4.location                = New-Object System.Drawing.Point(20,135)
            $ATCButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATCButton4                         = New-Object system.Windows.Forms.Button
            $ATCButton4.text                    = "5"
            $ATCButton4.width                   = 105
            $ATCButton4.height                  = 35
            $ATCButton4.Enabled                 = $true
            $ATCButton4.location                = New-Object System.Drawing.Point(20,175)
            $ATCButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATCButton6                         = New-Object system.Windows.Forms.Button
            $ATCButton6.text                    = "6"
            $ATCButton6.width                   = 105
            $ATCButton6.height                  = 35
            $ATCButton6.Enabled                 = $true
            $ATCButton6.location                = New-Object System.Drawing.Point(160,15)
            $ATCButton6.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATCButton7                         = New-Object system.Windows.Forms.Button
            $ATCButton7.text                    = "7"
            $ATCButton7.width                   = 105
            $ATCButton7.height                  = 35
            $ATCButton7.Enabled                 = $true
            $ATCButton7.location                = New-Object System.Drawing.Point(160,55)
            $ATCButton7.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATCButton8                         = New-Object system.Windows.Forms.Button
            $ATCButton8.text                    = "8"
            $ATCButton8.width                   = 105
            $ATCButton8.height                  = 35
            $ATCButton8.Enabled                 = $true
            $ATCButton8.location                = New-Object System.Drawing.Point(160,95)
            $ATCButton8.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATCButton9                         = New-Object system.Windows.Forms.Button
            $ATCButton9.text                    = "9"
            $ATCButton9.width                   = 105
            $ATCButton9.height                  = 35
            $ATCButton9.Enabled                 = $true
            $ATCButton9.location                = New-Object System.Drawing.Point(160,135)
            $ATCButton9.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATCButton10                        = New-Object system.Windows.Forms.Button
            $ATCButton10.text                   = "10"
            $ATCButton10.width                  = 105
            $ATCButton10.height                 = 35
            $ATCButton10.Enabled                = $true
            $ATCButton10.location               = New-Object System.Drawing.Point(160,175)
            $ATCButton10.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
           
           
            $Form.controls.AddRange(@($ATCButton1,$ATCButton2,$ATCButton3,$ATCButton4,$ATCButton5,$ATCButton6,$ATCButton7,$ATCButton8,$ATCButton9,$ATCButton10))

            $ATCButton1.Add_Click({  })
        
            $ATCButton2.Add_Click({  })
        
            $ATCButton3.Add_Click({  })
        
            $ATCButton4.Add_Click({  })
        
            $ATCButton5.Add_Click({  })
        
            $ATCButton6.Add_Click({  })
        
            $ATCButton7.Add_Click({  })
        
            $ATCButton8.Add_Click({  })
        
            $ATCButton9.Add_Click({  })
        
            $ATCButton10.Add_Click({  })
        
        
            [void]$Form.ShowDialog()
        }
    #CIS 19: Administrative Templates (User)
    function AdministrativeTemplatesUser {
            Add-Type -AssemblyName System.Windows.Forms
            [System.Windows.Forms.Application]::EnableVisualStyles()

            $Form                               = New-Object system.Windows.Forms.Form
            $Form.ClientSize                    = New-Object System.Drawing.Point(145,225)
            $Form.text                          = "CIS"
            $Form.TopMost                       = $false

            $ATUButton1                         = New-Object system.Windows.Forms.Button
            $ATUButton1.text                    = "1"
            $ATUButton1.width                   = 105
            $ATUButton1.height                  = 35
            $ATUButton1.Enabled                 = $true
            $ATUButton1.location                = New-Object System.Drawing.Point(20,15)
            $ATUButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $ATUButton2                         = New-Object system.Windows.Forms.Button
            $ATUButton2.text                    = "2"
            $ATUButton2.width                   = 105
            $ATUButton2.height                  = 35
            $ATUButton2.Enabled                 = $true
            $ATUButton2.location                = New-Object System.Drawing.Point(20,55)
            $ATUButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $ATUButton3                         = New-Object system.Windows.Forms.Button
            $ATUButton3.text                    = "3"
            $ATUButton3.width                   = 105
            $ATUButton3.height                  = 35
            $ATUButton3.Enabled                 = $true
            $ATUButton3.location                = New-Object System.Drawing.Point(20,95)
            $ATUButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $ATUButton4                         = New-Object system.Windows.Forms.Button
            $ATUButton4.text                    = "4"
            $ATUButton4.width                   = 105
            $ATUButton4.height                  = 35
            $ATUButton4.Enabled                 = $true
            $ATUButton4.location                = New-Object System.Drawing.Point(20,135)
            $ATUButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $ATUButton4                         = New-Object system.Windows.Forms.Button
            $ATUButton4.text                    = "5"
            $ATUButton4.width                   = 105
            $ATUButton4.height                  = 35
            $ATUButton4.Enabled                 = $true
            $ATUButton4.location                = New-Object System.Drawing.Point(20,175)
            $ATUButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $ATUButton6                         = New-Object system.Windows.Forms.Button
            $ATUButton6.text                    = "6"
            $ATUButton6.width                   = 105
            $ATUButton6.height                  = 35
            $ATUButton6.Enabled                 = $true
            $ATUButton6.location                = New-Object System.Drawing.Point(160,15)
            $ATUButton6.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $ATUButton7                         = New-Object system.Windows.Forms.Button
            $ATUButton7.text                    = "7"
            $ATUButton7.width                   = 105
            $ATUButton7.height                  = 35
            $ATUButton7.Enabled                 = $true
            $ATUButton7.location                = New-Object System.Drawing.Point(160,55)
            $ATUButton7.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $ATUButton8                         = New-Object system.Windows.Forms.Button
            $ATUButton8.text                    = "8"
            $ATUButton8.width                   = 105
            $ATUButton8.height                  = 35
            $ATUButton8.Enabled                 = $true
            $ATUButton8.location                = New-Object System.Drawing.Point(160,95)
            $ATUButton8.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $ATUButton9                         = New-Object system.Windows.Forms.Button
            $ATUButton9.text                    = "9"
            $ATUButton9.width                   = 105
            $ATUButton9.height                  = 35
            $ATUButton9.Enabled                 = $true
            $ATUButton9.location                = New-Object System.Drawing.Point(160,135)
            $ATUButton9.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $ATUButton10                        = New-Object system.Windows.Forms.Button
            $ATUButton10.text                   = "10"
            $ATUButton10.width                  = 105
            $ATUButton10.height                 = 35
            $ATUButton10.Enabled                = $true
            $ATUButton10.location               = New-Object System.Drawing.Point(160,175)
            $ATUButton10.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)


            $Form.controls.AddRange(@($ATUButton1,$ATUButton2,$ATUButton3,$ATUButton4,$ATUButton5,$ATUButton6,$ATUButton7,$ATUButton8,$ATUButton9,$ATUButton10))


            $ATUButton1.Add_Click({  })

            $ATUButton2.Add_Click({  })

            $ATUButton3.Add_Click({  })

            $ATUButton4.Add_Click({  })

            $ATUButton5.Add_Click({  })

            $ATUButton6.Add_Click({  })

            $ATUButton7.Add_Click({  })

            $ATUButton8.Add_Click({  })

            $ATUButton9.Add_Click({  })

            $ATUButton10.Add_Click({  })


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

    $CISButton4.Add_Click({ WindowsFirewall })

    $CISButton5.Add_Click({ AdavncedAuditPolicyConfig })

    $CISButton6.Add_Click({ AdministrativeTemplatesComputer })

    $CISButton7.Add_Click({ AdministrativeTemplatesUser })

    [void]$Form.ShowDialog()
}
MainGUI
} #End Function
#Call Function
CISScrtiptGUI