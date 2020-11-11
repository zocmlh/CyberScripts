#Main GUI Script
Function GUIScript{    
          function GUI1 {
            Add-Type -AssemblyName System.Windows.Forms
            [System.Windows.Forms.Application]::EnableVisualStyles()

            $Form                               = New-Object system.Windows.Forms.Form
            $Form.ClientSize                    = New-Object System.Drawing.Point(185,110)
            $Form.FormBorderStyle               = 'Fixed3D'
            $Form.MaximizeBox                   = $false
            $Form.text                          = "GUI"
            $Form.TopMost                       = $false

            $GUIButton1                         = New-Object system.Windows.Forms.Button
            $GUIButton1.text                    = "1"
            $GUIButton1.width                   = 105
            $GUIButton1.height                  = 35
            $GUIButton1.Enabled                 = $true
            $GUIButton1.location                = New-Object System.Drawing.Point(40,15)
            $GUIButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $Form.controls.AddRange(@($GUIButton1))

            $GUIButton1.Add_Click({ GUI1 })

            [void]$Form.ShowDialog()
        }
        function GUI2 {
            Add-Type -AssemblyName System.Windows.Forms
            [System.Windows.Forms.Application]::EnableVisualStyles()
            
            $Form                               = New-Object system.Windows.Forms.Form
            $Form.ClientSize                    = New-Object System.Drawing.Point(300,120)
            $Form.FormBorderStyle               = 'Fixed3D'
            $Form.MaximizeBox                   = $false
            $Form.text                          = "GUI"
            $Form.TopMost                       = $false
            
            $GUIButton1                         = New-Object system.Windows.Forms.Button
            $GUIButton1.text                    = "1"
            $GUIButton1.width                   = 110
            $GUIButton1.height                  = 35
            $GUIButton1.enabled                 = $true
            $GUIButton1.location                = New-Object System.Drawing.Point(20,20)
            $GUIButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
            
            $GUIButton2                         = New-Object system.Windows.Forms.Button
            $GUIButton2.text                    = "2"
            $GUIButton2.width                   = 110
            $GUIButton2.height                  = 35
            $GUIButton2.Enabled                 = $true
            $GUIButton2.location                = New-Object System.Drawing.Point(160,20)
            $GUIButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
            
            $GUIButton3                         = New-Object system.Windows.Forms.Button
            $GUIButton3.text                    = "3"
            $GUIButton3.width                   = 110
            $GUIButton3.height                  = 35
            $GUIButton3.Enabled                 = $true
            $GUIButton3.location                = New-Object System.Drawing.Point(90,70)
            $GUIButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $Form.controls.AddRange(@($GUIButton1,$GUIButton2,$GUIButton3))

            [void]$Form.ShowDialog()

            $GUIButton1.Add_Click({  })
            $GUIButton2.Add_Click({  })
            $GUIButton3.Add_Click({  })
        }
        function GUI3 {
            Add-Type -AssemblyName System.Windows.Forms
            [System.Windows.Forms.Application]::EnableVisualStyles()

            $Form                               = New-Object system.Windows.Forms.Form
            $Form.ClientSize                    = New-Object System.Drawing.Point(285,225)
            $Form.FormBorderStyle               = 'Fixed3D'
            $Form.MaximizeBox                   = $false
            $Form.text                          = "GUI"
            $Form.TopMost                       = $false

            $GUIButton1                         = New-Object system.Windows.Forms.Button
            $GUIButton1.text                    = "1"
            $GUIButton1.width                   = 105
            $GUIButton1.height                  = 35
            $GUIButton1.Enabled                 = $true
            $GUIButton1.location                = New-Object System.Drawing.Point(20,15)
            $GUIButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $GUIButton2                         = New-Object system.Windows.Forms.Button
            $GUIButton2.text                    = "2"
            $GUIButton2.width                   = 105
            $GUIButton2.height                  = 35
            $GUIButton2.Enabled                 = $true
            $GUIButton2.location                = New-Object System.Drawing.Point(20,55)
            $GUIButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $GUIButton3                         = New-Object system.Windows.Forms.Button
            $GUIButton3.text                    = "3"
            $GUIButton3.width                   = 105
            $GUIButton3.height                  = 35
            $GUIButton3.Enabled                 = $true
            $GUIButton3.location                = New-Object System.Drawing.Point(20,95)
            $GUIButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $GUIButton4                         = New-Object system.Windows.Forms.Button
            $GUIButton4.text                    = "4"
            $GUIButton4.width                   = 105
            $GUIButton4.height                  = 35
            $GUIButton4.Enabled                 = $true
            $GUIButton4.location                = New-Object System.Drawing.Point(20,135)
            $GUIButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $GUIButton5                         = New-Object system.Windows.Forms.Button
            $GUIButton5.text                    = "5"
            $GUIButton5.width                   = 105
            $GUIButton5.height                  = 35
            $GUIButton5.Enabled                 = $true
            $GUIButton5.location                = New-Object System.Drawing.Point(90,180)
            $GUIButton5.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $GUIButton6                         = New-Object system.Windows.Forms.Button
            $GUIButton6.text                    = "6"
            $GUIButton6.width                   = 105
            $GUIButton6.height                  = 35
            $GUIButton6.Enabled                 = $true
            $GUIButton6.location                = New-Object System.Drawing.Point(160,15)
            $GUIButton6.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $GUIButton7                         = New-Object system.Windows.Forms.Button
            $GUIButton7.text                    = "7"
            $GUIButton7.width                   = 105
            $GUIButton7.height                  = 35
            $GUIButton7.Enabled                 = $true
            $GUIButton7.location                = New-Object System.Drawing.Point(160,55)
            $GUIButton7.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $GUIButton8                         = New-Object system.Windows.Forms.Button
            $GUIButton8.text                    = "8"
            $GUIButton8.width                   = 105
            $GUIButton8.height                  = 35
            $GUIButton8.Enabled                 = $true
            $GUIButton8.location                = New-Object System.Drawing.Point(160,95)
            $GUIButton8.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $GUIButton9                         = New-Object system.Windows.Forms.Button
            $GUIButton9.text                    = "9"
            $GUIButton9.width                   = 105
            $GUIButton9.height                  = 35
            $GUIButton9.Enabled                 = $true
            $GUIButton9.location                = New-Object System.Drawing.Point(160,135)
            $GUIButton9.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $Form.controls.AddRange(@($GUIButton1,$GUIButton2,$GUIButton3,$GUIButton4,$GUIButton5,$GUIButton6,$GUIButton7,$GUIButton8,$GUIButton9))

            [void]$Form.ShowDialog()

            $GUIButton1.Add_Click({  })

            $GUIButton2.Add_Click({  })

            $GUIButton3.Add_Click({  })

            $GUIButton4.Add_Click({  })

            $GUIButton5.Add_Click({  })

            $GUIButton6.Add_Click({  })

            $GUIButton7.Add_Click({  })

            $GUIButton8.Add_Click({  })

            $GUIButton9.Add_Click({  })

        }
        function GUI4 {
            Add-Type -AssemblyName System.Windows.Forms
            [System.Windows.Forms.Application]::EnableVisualStyles()
        
            $Form                               = New-Object system.Windows.Forms.Form
            $Form.ClientSize                    = New-Object System.Drawing.Point(285,225)
            $Form.FormBorderStyle               = 'Fixed3D'
            $Form.MaximizeBox                   = $false
            $Form.text                          = "GUI"
            $Form.TopMost                       = $false
        
            $GUIButton1                         = New-Object system.Windows.Forms.Button
            $GUIButton1.text                    = "1"
            $GUIButton1.width                   = 105
            $GUIButton1.height                  = 35
            $GUIButton1.Enabled                 = $true
            $GUIButton1.location                = New-Object System.Drawing.Point(20,15)
            $GUIButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $GUIButton2                         = New-Object system.Windows.Forms.Button
            $GUIButton2.text                    = "2"
            $GUIButton2.width                   = 105
            $GUIButton2.height                  = 35
            $GUIButton2.Enabled                 = $true
            $GUIButton2.location                = New-Object System.Drawing.Point(20,55)
            $GUIButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $GUIButton3                         = New-Object system.Windows.Forms.Button
            $GUIButton3.text                    = "3"
            $GUIButton3.width                   = 105
            $GUIButton3.height                  = 35
            $GUIButton3.Enabled                 = $true
            $GUIButton3.location                = New-Object System.Drawing.Point(20,95)
            $GUIButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $GUIButton4                         = New-Object system.Windows.Forms.Button
            $GUIButton4.text                    = "4"
            $GUIButton4.width                   = 105
            $GUIButton4.height                  = 35
            $GUIButton4.Enabled                 = $true
            $GUIButton4.location                = New-Object System.Drawing.Point(20,135)
            $GUIButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $GUIButton5                         = New-Object system.Windows.Forms.Button
            $GUIButton5.text                    = "5"
            $GUIButton5.width                   = 105
            $GUIButton5.height                  = 35
            $GUIButton5.Enabled                 = $true
            $GUIButton5.location                = New-Object System.Drawing.Point(90,175)
            $GUIButton5.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $GUIButton6                         = New-Object system.Windows.Forms.Button
            $GUIButton6.text                    = "6"
            $GUIButton6.width                   = 105
            $GUIButton6.height                  = 35
            $GUIButton6.Enabled                 = $true
            $GUIButton6.location                = New-Object System.Drawing.Point(160,15)
            $GUIButton6.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $GUIButton7                         = New-Object system.Windows.Forms.Button
            $GUIButton7.text                    = "7"
            $GUIButton7.width                   = 105
            $GUIButton7.height                  = 35
            $GUIButton7.Enabled                 = $true
            $GUIButton7.location                = New-Object System.Drawing.Point(160,55)
            $GUIButton7.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $GUIButton8                         = New-Object system.Windows.Forms.Button
            $GUIButton8.text                    = "8"
            $GUIButton8.width                   = 105
            $GUIButton8.height                  = 35
            $GUIButton8.Enabled                 = $true
            $GUIButton8.location                = New-Object System.Drawing.Point(160,95)
            $GUIButton8.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $GUIButton9                         = New-Object system.Windows.Forms.Button
            $GUIButton9.text                    = "9"
            $GUIButton9.width                   = 105
            $GUIButton9.height                  = 35
            $GUIButton9.Enabled                 = $true
            $GUIButton9.location                = New-Object System.Drawing.Point(160,135)
            $GUIButton9.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
           
            $Form.controls.AddRange(@($GUIButton1,$GUIButton2,$GUIButton3,$GUIButton4,$GUIButton5,$GUIButton6,$GUIButton7,$GUIButton8,$GUIButton9))

            $GUIButton1.Add_Click({  })
        
            $GUIButton2.Add_Click({  })
        
            $GUIButton3.Add_Click({  })
        
            $GUIButton4.Add_Click({  })
        
            $GUIButton5.Add_Click({  })
        
            $GUIButton6.Add_Click({  })
        
            $GUIButton7.Add_Click({  })
        
            $GUIButton8.Add_Click({  })
        
            $GUIButton9.Add_Click({  })
        
        
            [void]$Form.ShowDialog()
        }
    function GUI5 {
            Add-Type -AssemblyName System.Windows.Forms
            [System.Windows.Forms.Application]::EnableVisualStyles()

            $Form                               = New-Object system.Windows.Forms.Form
            $Form.ClientSize                    = New-Object System.Drawing.Point(145,230)
            $Form.FormBorderStyle               = 'Fixed3D'
            $Form.MaximizeBox                   = $false
            $Form.text                          = "GUI"
            $Form.TopMost                       = $false

            $GUIButton1                         = New-Object system.Windows.Forms.Button
            $GUIButton1.text                    = "1"
            $GUIButton1.width                   = 105
            $GUIButton1.height                  = 35
            $GUIButton1.Enabled                 = $true
            $GUIButton1.location                = New-Object System.Drawing.Point(20,15)
            $GUIButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $GUIButton2                         = New-Object system.Windows.Forms.Button
            $GUIButton2.text                    = "2"
            $GUIButton2.width                   = 105
            $GUIButton2.height                  = 35
            $GUIButton2.Enabled                 = $true
            $GUIButton2.location                = New-Object System.Drawing.Point(20,55)
            $GUIButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $GUIButton3                         = New-Object system.Windows.Forms.Button
            $GUIButton3.text                    = "3"
            $GUIButton3.width                   = 105
            $GUIButton3.height                  = 35
            $GUIButton3.Enabled                 = $true
            $GUIButton3.location                = New-Object System.Drawing.Point(20,95)
            $GUIButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $GUIButton4                         = New-Object system.Windows.Forms.Button
            $GUIButton4.text                    = "4"
            $GUIButton4.width                   = 105
            $GUIButton4.height                  = 35
            $GUIButton4.Enabled                 = $true
            $GUIButton4.location                = New-Object System.Drawing.Point(20,135)
            $GUIButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $GUIButton5                         = New-Object system.Windows.Forms.Button
            $GUIButton5.text                    = "5"
            $GUIButton5.width                   = 105
            $GUIButton5.height                  = 35
            $GUIButton5.Enabled                 = $true
            $GUIButton5.location                = New-Object System.Drawing.Point(20,175)
            $GUIButton5.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)


            $Form.controls.AddRange(@($GUIButton1,$GUIButton2,$GUIButton3,$GUIButton4,$GUIButton5))


            $GUIButton1.Add_Click({  })

            $GUIButton2.Add_Click({  })

            $GUIButton3.Add_Click({  })

            $GUIButton4.Add_Click({  })

            $GUIButton5.Add_Click({  })

            [void]$Form.ShowDialog()
        }
    #Main GUI
    function MainGUI {
    Add-Type -AssemblyName System.Windows.Forms
    [System.Windows.Forms.Application]::EnableVisualStyles()

    $Form                               = New-Object system.Windows.Forms.Form
    $Form.ClientSize                    = New-Object System.Drawing.Point(185,225)
    $Form.FormBorderStyle               = 'Fixed3D'
    $Form.MaximizeBox                   = $false
    $Form.text                          = "GUI"
    $Form.TopMost                       = $false

    $GUIButton1                         = New-Object system.Windows.Forms.Button
    $GUIButton1.text                    = "1"
    $GUIButton1.width                   = 105
    $GUIButton1.height                  = 35
    $GUIButton1.Enabled                 = $true
    $GUIButton1.location                = New-Object System.Drawing.Point(40,15)
    $GUIButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $GUIButton2                         = New-Object system.Windows.Forms.Button
    $GUIButton2.text                    = "2"
    $GUIButton2.width                   = 105
    $GUIButton2.height                  = 35
    $GUIButton2.Enabled                 = $true
    $GUIButton2.location                = New-Object System.Drawing.Point(40,55)
    $GUIButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $GUIButton3                         = New-Object system.Windows.Forms.Button
    $GUIButton3.text                    = "3"
    $GUIButton3.width                   = 105
    $GUIButton3.height                  = 35
    $GUIButton3.Enabled                 = $true
    $GUIButton3.location                = New-Object System.Drawing.Point(40,95)
    $GUIButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $GUIButton4                         = New-Object system.Windows.Forms.Button
    $GUIButton4.text                    = "4"
    $GUIButton4.width                   = 105
    $GUIButton4.height                  = 35
    $GUIButton4.Enabled                 = $true
    $GUIButton4.location                = New-Object System.Drawing.Point(40,135)
    $GUIButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $GUIButton5                         = New-Object system.Windows.Forms.Button
    $GUIButton5.text                    = "5"
    $GUIButton5.width                   = 105
    $GUIButton5.height                  = 35
    $GUIButton5.Enabled                 = $true
    $GUIButton5.location                = New-Object System.Drawing.Point(40,175)
    $GUIButton5.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)


    $Form.controls.AddRange(@($GUIButton1,$GUIButton2,$GUIButton3,$GUIButton4,$GUIButton5))


    $GUIButton1.Add_Click({ GUI1 })

    $GUIButton2.Add_Click({ GUI2 })

    $GUIButton3.Add_Click({ GUI3 })

    $GUIButton4.Add_Click({ GUI4 })

    $GUIButton5.Add_Click({ GUI5 })

    [void]$Form.ShowDialog()
        }
    MainGUI
} #End Function
#Call Function
GUIScript