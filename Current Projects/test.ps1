


function SystemServices {
    Add-Type -AssemblyName System.Windows.Forms
    [System.Windows.Forms.Application]::EnableVisualStyles()
    
    $Form                            = New-Object system.Windows.Forms.Form
    $Form.ClientSize                 = New-Object System.Drawing.Point(285,80)
    $Form.FormBorderStyle            = 'Fixed3D'
    $Form.MaximizeBox                = $false
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

    $SSButton.Add_Click({ function SystemServices2 {
        Add-Type -AssemblyName System.Windows.Forms
        [System.Windows.Forms.Application]::EnableVisualStyles()
        
        $Form2                            = New-Object system.Windows.Forms.Form
        $Form2.ClientSize                 = New-Object System.Drawing.Point(285,80)
        $Form2.FormBorderStyle            = 'Fixed3D'
        $Form2.MaximizeBox                = $false
        $Form2.text                       = "System Services"
        $Form2.TopMost                    = $false
        
        $SSButton2                         = New-Object system.Windows.Forms.Button
        $SSButton2.text                    = "System Services"
        $SSButton2.width                   = 110
        $SSButton2.height                  = 35
        $SSButton2.enabled                 = $true
        $SSButton2.location                = New-Object System.Drawing.Point(90,20)
        $SSButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
    
        $Form.controls.AddRange(@($SSButton2))
        [void]$Form.ShowDialog()
    
        $SSButton.Add_Click({ })
    } })
}
SystemServices