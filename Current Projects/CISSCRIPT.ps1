#CIS GUI Script
New-Item -ItemType Directory -Force -Path 'C:\' -Name "Powershell Configs"
#CIS #1: Account Polices


#Main GUI Script
Function CISScript{
    
    #CIS 1: Password Polices
    function SecuritySettings {
        New-Item -ItemType "file" -Path "C:\Powershell Configs" -Name "SecuritySettings.inf" -Value (
      " [Unicode]
        Unicode=yes
        [Version]
        signature=`"$CHICAGO$`"
        Revision=1
        [System Access]
        MinimumPasswordAge = 1
        MaximumPasswordAge = 60
        MinimumPasswordLength = 14
        PasswordComplexity = 1
        PasswordHistorySize = 24
        LockoutBadCount = 10
        ResetLockoutCount = 15
        LockoutDuration = 15
        ForceLogoffWhenHourExpire = 1
        NewAdministratorName = `"CyberSquad`"
        NewGuestName = `"CyberSquad2Boogalo`"
        ClearTextPassword = 0
        LSAAnonymousNameLookup = 0
        EnableAdminAccount = 0
        EnableGuestAccount = 0
        [Event Audit]
        AuditSystemEvents = 3
        AuditLogonEvents = 3
        AuditObjectAccess = 3
        AuditPrivilegeUse = 3
        AuditPolicyChange = 3
        AuditAccountManage = 3
        AuditProcessTracking = 3
        AuditDSAccess = 3
        AuditAccountLogon = 3
        [Registry Values]
        MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\AllocateDASD=1,`"2`"
        MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\CachedLogonsCount=1,`"4`"
        MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\PasswordExpiryWarning=4,14
        MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\ScRemoveOption=1,`"1`"
        MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\ConsentPromptBehaviorAdmin=4,2
        MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\ConsentPromptBehaviorUser=4,0
        MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableCAD=4,0
        MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\DontDisplayLastUserName=4,1
        MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableInstallerDetection=4,1
        MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableLUA=4,1
        MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableSecureUIAPaths=4,1
        MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableVirtualization=4,1
        MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\FilterAdministratorToken=4,1
        MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\InactivityTimeoutSecs=4,900
        MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters\SupportedEncryptionTypes=4,24
        MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\LegalNoticeCaption=1,`"funni`"
        MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\LegalNoticeText=7,funni
        MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\MaxDevicePasswordFailedAttempts=4,10
        MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\NoConnectedUser=4,3
        MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\PromptOnSecureDesktop=4,1
        MACHINE\Software\Policies\Microsoft\Cryptography\ForceKeyProtection=4,1
        MACHINE\System\CurrentControlSet\Control\Lsa\CrashOnAuditFail=4,0
        MACHINE\System\CurrentControlSet\Control\Lsa\DisableDomainCreds=4,1
        MACHINE\System\CurrentControlSet\Control\Lsa\EveryoneIncludesAnonymous=4,0
        MACHINE\System\CurrentControlSet\Control\Lsa\ForceGuest=4,0
        MACHINE\System\CurrentControlSet\Control\Lsa\LimitBlankPasswordUse=4,1
        MACHINE\System\CurrentControlSet\Control\Lsa\LmCompatibilityLevel=4,5
        MACHINE\System\CurrentControlSet\Control\Lsa\MSV1_0\allownullsessionfallback=4,0
        MACHINE\System\CurrentControlSet\Control\Lsa\MSV1_0\NTLMMinClientSec=4,537395200
        MACHINE\System\CurrentControlSet\Control\Lsa\MSV1_0\NTLMMinServerSec=4,537395200
        MACHINE\System\CurrentControlSet\Control\Lsa\NoLMHash=4,1
        MACHINE\System\CurrentControlSet\Control\Lsa\pku2u\AllowOnlineID=4,0
        MACHINE\System\CurrentControlSet\Control\Lsa\RestrictAnonymous=4,1
        MACHINE\System\CurrentControlSet\Control\Lsa\RestrictAnonymousSAM=4,1
        MACHINE\System\CurrentControlSet\Control\Lsa\RestrictRemoteSAM=1,`"O:BAG:BAD:(A;;RC;;;BA)`"
        MACHINE\System\CurrentControlSet\Control\Lsa\SCENoApplyLegacyAuditPolicy=4,1
        MACHINE\System\CurrentControlSet\Control\Lsa\UseMachineId=4,1
        MACHINE\System\CurrentControlSet\Control\Print\Providers\LanMan Print Services\Servers\AddPrinterDrivers=4,1
        MACHINE\System\CurrentControlSet\Control\SecurePipeServers\Winreg\AllowedExactPaths\Machine=7,System\CurrentControlSet\Control\ProductOptions,System\CurrentControlSet\Control\Server Applications,Software\Microsoft\Windows NT\CurrentVersion
        MACHINE\System\CurrentControlSet\Control\Session Manager\Kernel\ObCaseInsensitive=4,1
        MACHINE\System\CurrentControlSet\Control\Session Manager\ProtectionMode=4,1
        MACHINE\System\CurrentControlSet\Services\LanManServer\Parameters\AutoDisconnect=4,15
        MACHINE\System\CurrentControlSet\Services\LanManServer\Parameters\EnableForcedLogOff=4,1
        MACHINE\System\CurrentControlSet\Services\LanManServer\Parameters\NullSessionPipes=7,
        MACHINE\System\CurrentControlSet\Services\LanManServer\Parameters\NullSessionShares=7,
        MACHINE\System\CurrentControlSet\Services\LanManServer\Parameters\RequireSecuritySignature=4,1
        MACHINE\System\CurrentControlSet\Services\LanManServer\Parameters\RestrictNullSessAccess=4,1
        MACHINE\System\CurrentControlSet\Services\LanManServer\Parameters\SmbServerNameHardeningLevel=4,1
        MACHINE\System\CurrentControlSet\Services\LanmanWorkstation\Parameters\EnablePlainTextPassword=4,0
        MACHINE\System\CurrentControlSet\Services\LanmanWorkstation\Parameters\EnableSecuritySignature=4,1
        MACHINE\System\CurrentControlSet\Services\LanmanWorkstation\Parameters\RequireSecuritySignature=4,1
        MACHINE\System\CurrentControlSet\Services\LDAP\LDAPClientIntegrity=4,1
        MACHINE\System\CurrentControlSet\Services\Netlogon\Parameters\DisablePasswordChange=4,0
        MACHINE\System\CurrentControlSet\Services\Netlogon\Parameters\MaximumPasswordAge=4,30
        MACHINE\System\CurrentControlSet\Services\Netlogon\Parameters\RequireSignOrSeal=4,1
        MACHINE\System\CurrentControlSet\Services\Netlogon\Parameters\RequireStrongKey=4,1
        MACHINE\System\CurrentControlSet\Services\Netlogon\Parameters\SealSecureChannel=4,1
        MACHINE\System\CurrentControlSet\Services\Netlogon\Parameters\SignSecureChannel=4,1
        [Privilege Rights]
        SeTrustedCredManAccessPrivilege =
        SeNetworkLogonRight = *S-1-5-32-555,*S-1-5-32-544
        SeTcbPrivilege =
        SeIncreaseQuotaPrivilege = *S-1-5-20,*S-1-5-19,*S-1-5-32-544
        SeInteractiveLogonRight = *S-1-5-32-545,*S-1-5-32-544
        SeRemoteInteractiveLogonRight = *S-1-5-32-555,*S-1-5-32-544
        SeBackupPrivilege = *S-1-5-32-544
        SeSystemtimePrivilege = *S-1-5-19,*S-1-5-32-544
        SeTimeZonePrivilege = *S-1-5-32-545,*S-1-5-19,*S-1-5-32-544
        SeCreatePagefilePrivilege = *S-1-5-32-544
        SeCreateTokenPrivilege =
        SeCreateGlobalPrivilege = *S-1-5-6,*S-1-5-20,*S-1-5-19,*S-1-5-32-544
        SeCreatePermanentPrivilege =
        SeCreateSymbolicLinkPrivilege = *S-1-5-32-544
        SeDebugPrivilege = *S-1-5-32-544
        SeDenyNetworkLogonRight = *S-1-5-113,*S-1-5-32-546
        SeDenyBatchLogonRight = *S-1-5-32-546
        SeDenyServiceLogonRight = *S-1-5-32-546
        SeDenyInteractiveLogonRight = *S-1-5-32-546
        SeDenyRemoteInteractiveLogonRight = *S-1-5-113,*S-1-5-32-546
        SeEnableDelegationPrivilege =
        SeRemoteShutdownPrivilege = *S-1-5-32-544
        SeAuditPrivilege = *S-1-5-20,*S-1-5-19
        SeImpersonatePrivilege = *S-1-5-6,*S-1-5-20,*S-1-5-19,*S-1-5-32-544
        SeIncreaseBasePriorityPrivilege = *S-1-5-90-0,*S-1-5-32-544
        SeLoadDriverPrivilege = *S-1-5-32-544
        SeLockMemoryPrivilege =
        SeBatchLogonRight = *S-1-5-32-544
        SeServiceLogonRight =
        SeSecurityPrivilege = *S-1-5-32-544
        SeRelabelPrivilege =
        SeSystemEnvironmentPrivilege = *S-1-5-32-544
        SeManageVolumePrivilege = *S-1-5-32-544
        SeProfileSingleProcessPrivilege = *S-1-5-32-544
        SeSystemProfilePrivilege = *S-1-5-80-3139157870-2983391045-3678747466-658725712-1809340420,*S-1-5-32-544
        SeAssignPrimaryTokenPrivilege = *S-1-5-20,*S-1-5-19
        SeRestorePrivilege = *S-1-5-32-544
        SeShutdownPrivilege = *S-1-5-32-545,*S-1-5-32-544
        SeTakeOwnershipPrivilege = *S-1-5-32-544
        [Service General Setting]
        `"BTAGService`",4,`"`"
        `"bthserv`",4,`"`"
        `"Bonjour Service`",4,`"`"
        `"GamingServicesNet`",4,`"`"
        `"MapsBroker`",4,`"`"
        `"SharedAccess`",4,`"`"
        `"lltdsvc`",4,`"`"
        `"MSiSCSI`",4,`"`"
        `"PNRPsvc`",4,`"`"
        `"p2psvc`",4,`"`"
        `"p2pimsvc`",4,`"`"
        `"PNRPAutoReg`",4,`"`"
        `"wercplsupport`",4,`"`" 
        `"RasAuto`",4,`"`"
        `"SessionEnv`",4,`"`"
        `"TermService`",4,`"`"
        `"UmRdpService`",4,`"`"
        `"RpcLocator`",4,`"`"
        `"RemoteRegistry`",4,`"`"
        `"RemoteAccess`",4,`"`"
        `"LanmanServer`",4,`"`"
        `"SSDPSRV`",4,`"`"
        `"WerSvc`",4,`"`"
        `"Wecsvc`",4,`"`"
        `"WMPNetworkSvc`",4,`"`"
        `"icssvc`",4,`"`"
        `"WpnService`",4,`"`"
        `"PushToInstall`",4,`"`"
        `"WinRM`",4,`"`"
        `"XboxGipSvc`",4,`"`"
        `"XblAuthManager`",4,`"`"
        `"XblGameSave`",4,`"`"
        `"XboxNetApiSvc`"`",4,`"`"
        "
        )

        secedit /import /db "C:\Powershell Configs\SecuritySettings.inf" /cfg 

    }
    #CIS 1: Account Lockout Polices
    function AccountLockoutPolices {
    
    }



    #CIS 1+2+5: Account Polices+Local Polices (1)
        function SecuritySettingsGUI {
            Add-Type -AssemblyName System.Windows.Forms
            [System.Windows.Forms.Application]::EnableVisualStyles()

            $Form                               = New-Object system.Windows.Forms.Form
            $Form.ClientSize                    = New-Object System.Drawing.Point(185,110)
            $Form.FormBorderStyle               = 'Fixed3D'
            $Form.MaximizeBox                   = $false
            $Form.text                          = "CIS"
            $Form.TopMost                       = $false

            $CISButton1                         = New-Object system.Windows.Forms.Button
            $CISButton1.text                    = "Set Security Settings"
            $CISButton1.width                   = 105
            $CISButton1.height                  = 35
            $CISButton1.Enabled                 = $true
            $CISButton1.location                = New-Object System.Drawing.Point(40,15)
            $CISButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $Form.controls.AddRange(@($CISButton1))

            $CISButton1.Add_Click({ SecuritySettings })

            [void]$Form.ShowDialog()
        }

    #CIS 9: Windows Firewall with Advanced Security (4)
        function WindowsFirewall {
            Add-Type -AssemblyName System.Windows.Forms
            [System.Windows.Forms.Application]::EnableVisualStyles()
            
            $Form                            = New-Object system.Windows.Forms.Form
            $Form.ClientSize                 = New-Object System.Drawing.Point(300,120)
            $Form.FormBorderStyle            = 'Fixed3D'
            $Form.MaximizeBox                = $false
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
            
            $PUBPButton                       = New-Object system.Windows.Forms.Button
            $PUBPButton.text                  = "Public Proflie"
            $PUBPButton.width                 = 110
            $PUBPButton.height                = 35
            $PUBPButton.Enabled               = $true
            $PUBPButton.location              = New-Object System.Drawing.Point(90,70)
            $PUBPButton.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $Form.controls.AddRange(@($DPButton,$PPButton,$PUBPButton))

            [void]$Form.ShowDialog()

            $DPButton.Add_Click({  })
            $PPButton.Add_Click({  })
            $PUBPButton.Add_Click({  })
        }
    #CIS 17: Advanced Audit Policy Configuration (5)
        function AdavncedAuditPolicyConfig {
            Add-Type -AssemblyName System.Windows.Forms
            [System.Windows.Forms.Application]::EnableVisualStyles()

            $Form                               = New-Object system.Windows.Forms.Form
            $Form.ClientSize                    = New-Object System.Drawing.Point(285,225)
            $Form.FormBorderStyle               = 'Fixed3D'
            $Form.MaximizeBox                   = $false
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

            $AAPCButton5                         = New-Object system.Windows.Forms.Button
            $AAPCButton5.text                    = "Logon/Logoff"
            $AAPCButton5.width                   = 105
            $AAPCButton5.height                  = 35
            $AAPCButton5.Enabled                 = $true
            $AAPCButton5.location                = New-Object System.Drawing.Point(90,180)
            $AAPCButton5.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

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

            [void]$Form.ShowDialog()

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
    #CIS 18: Administrative Templates (Computer) (6)
        function AdministrativeTemplatesComputer {
            Add-Type -AssemblyName System.Windows.Forms
            [System.Windows.Forms.Application]::EnableVisualStyles()
        
            $Form                               = New-Object system.Windows.Forms.Form
            $Form.ClientSize                    = New-Object System.Drawing.Point(285,225)
            $Form.FormBorderStyle               = 'Fixed3D'
            $Form.MaximizeBox                   = $false
            $Form.text                          = "CIS"
            $Form.TopMost                       = $false
        
            $ATCButton1                         = New-Object system.Windows.Forms.Button
            $ATCButton1.text                    = "Control Panel"
            $ATCButton1.width                   = 105
            $ATCButton1.height                  = 35
            $ATCButton1.Enabled                 = $true
            $ATCButton1.location                = New-Object System.Drawing.Point(20,15)
            $ATCButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATCButton2                         = New-Object system.Windows.Forms.Button
            $ATCButton2.text                    = "LAPS"
            $ATCButton2.width                   = 105
            $ATCButton2.height                  = 35
            $ATCButton2.Enabled                 = $true
            $ATCButton2.location                = New-Object System.Drawing.Point(20,55)
            $ATCButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATCButton3                         = New-Object system.Windows.Forms.Button
            $ATCButton3.text                    = "MS Security Guide"
            $ATCButton3.width                   = 105
            $ATCButton3.height                  = 35
            $ATCButton3.Enabled                 = $true
            $ATCButton3.location                = New-Object System.Drawing.Point(20,95)
            $ATCButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATCButton4                         = New-Object system.Windows.Forms.Button
            $ATCButton4.text                    = "MSS (Legacy)"
            $ATCButton4.width                   = 105
            $ATCButton4.height                  = 35
            $ATCButton4.Enabled                 = $true
            $ATCButton4.location                = New-Object System.Drawing.Point(20,135)
            $ATCButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATCButton5                         = New-Object system.Windows.Forms.Button
            $ATCButton5.text                    = "Network"
            $ATCButton5.width                   = 105
            $ATCButton5.height                  = 35
            $ATCButton5.Enabled                 = $true
            $ATCButton5.location                = New-Object System.Drawing.Point(90,175)
            $ATCButton5.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATCButton6                         = New-Object system.Windows.Forms.Button
            $ATCButton6.text                    = "Printers"
            $ATCButton6.width                   = 105
            $ATCButton6.height                  = 35
            $ATCButton6.Enabled                 = $true
            $ATCButton6.location                = New-Object System.Drawing.Point(160,15)
            $ATCButton6.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATCButton7                         = New-Object system.Windows.Forms.Button
            $ATCButton7.text                    = "Start Menu and Taskbar"
            $ATCButton7.width                   = 105
            $ATCButton7.height                  = 35
            $ATCButton7.Enabled                 = $true
            $ATCButton7.location                = New-Object System.Drawing.Point(160,55)
            $ATCButton7.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATCButton8                         = New-Object system.Windows.Forms.Button
            $ATCButton8.text                    = "System"
            $ATCButton8.width                   = 105
            $ATCButton8.height                  = 35
            $ATCButton8.Enabled                 = $true
            $ATCButton8.location                = New-Object System.Drawing.Point(160,95)
            $ATCButton8.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
        
            $ATCButton9                         = New-Object system.Windows.Forms.Button
            $ATCButton9.text                    = "Windows Components"
            $ATCButton9.width                   = 105
            $ATCButton9.height                  = 35
            $ATCButton9.Enabled                 = $true
            $ATCButton9.location                = New-Object System.Drawing.Point(160,135)
            $ATCButton9.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
           
            $Form.controls.AddRange(@($ATCButton1,$ATCButton2,$ATCButton3,$ATCButton4,$ATCButton5,$ATCButton6,$ATCButton7,$ATCButton8,$ATCButton9))

            $ATCButton1.Add_Click({  })
        
            $ATCButton2.Add_Click({  })
        
            $ATCButton3.Add_Click({  })
        
            $ATCButton4.Add_Click({  })
        
            $ATCButton5.Add_Click({  })
        
            $ATCButton6.Add_Click({  })
        
            $ATCButton7.Add_Click({  })
        
            $ATCButton8.Add_Click({  })
        
            $ATCButton9.Add_Click({  })
        
        
            [void]$Form.ShowDialog()
        }
    #CIS 19: Administrative Templates (User) (7)
    function AdministrativeTemplatesUser {
            Add-Type -AssemblyName System.Windows.Forms
            [System.Windows.Forms.Application]::EnableVisualStyles()

            $Form                               = New-Object system.Windows.Forms.Form
            $Form.ClientSize                    = New-Object System.Drawing.Point(145,230)
            $Form.FormBorderStyle               = 'Fixed3D'
            $Form.MaximizeBox                   = $false
            $Form.text                          = "CIS"
            $Form.TopMost                       = $false

            $ATUButton1                         = New-Object system.Windows.Forms.Button
            $ATUButton1.text                    = "Control Panel"
            $ATUButton1.width                   = 105
            $ATUButton1.height                  = 35
            $ATUButton1.Enabled                 = $true
            $ATUButton1.location                = New-Object System.Drawing.Point(20,15)
            $ATUButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $ATUButton2                         = New-Object system.Windows.Forms.Button
            $ATUButton2.text                    = "Shared Folders"
            $ATUButton2.width                   = 105
            $ATUButton2.height                  = 35
            $ATUButton2.Enabled                 = $true
            $ATUButton2.location                = New-Object System.Drawing.Point(20,55)
            $ATUButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $ATUButton3                         = New-Object system.Windows.Forms.Button
            $ATUButton3.text                    = "Start Menu and Taskbar"
            $ATUButton3.width                   = 105
            $ATUButton3.height                  = 35
            $ATUButton3.Enabled                 = $true
            $ATUButton3.location                = New-Object System.Drawing.Point(20,95)
            $ATUButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $ATUButton4                         = New-Object system.Windows.Forms.Button
            $ATUButton4.text                    = "System"
            $ATUButton4.width                   = 105
            $ATUButton4.height                  = 35
            $ATUButton4.Enabled                 = $true
            $ATUButton4.location                = New-Object System.Drawing.Point(20,135)
            $ATUButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

            $ATUButton5                         = New-Object system.Windows.Forms.Button
            $ATUButton5.text                    = "Windows Components"
            $ATUButton5.width                   = 105
            $ATUButton5.height                  = 35
            $ATUButton5.Enabled                 = $true
            $ATUButton5.location                = New-Object System.Drawing.Point(20,175)
            $ATUButton5.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)


            $Form.controls.AddRange(@($ATUButton1,$ATUButton2,$ATUButton3,$ATUButton4,$ATUButton5))


            $ATUButton1.Add_Click({  })

            $ATUButton2.Add_Click({  })

            $ATUButton3.Add_Click({  })

            $ATUButton4.Add_Click({  })

            $ATUButton5.Add_Click({  })

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
    $Form.text                          = "CIS"
    $Form.TopMost                       = $false

    $CISButton1                         = New-Object system.Windows.Forms.Button
    $CISButton1.text                    = "Security Settings"
    $CISButton1.width                   = 105
    $CISButton1.height                  = 35
    $CISButton1.Enabled                 = $true
    $CISButton1.location                = New-Object System.Drawing.Point(40,15)
    $CISButton1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $CISButton2                         = New-Object system.Windows.Forms.Button
    $CISButton2.text                    = "Windows Firewall"
    $CISButton2.width                   = 105
    $CISButton2.height                  = 35
    $CISButton2.Enabled                 = $true
    $CISButton2.location                = New-Object System.Drawing.Point(40,55)
    $CISButton2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $CISButton3                         = New-Object system.Windows.Forms.Button
    $CISButton3.text                    = "AAPConfig"
    $CISButton3.width                   = 105
    $CISButton3.height                  = 35
    $CISButton3.Enabled                 = $true
    $CISButton3.location                = New-Object System.Drawing.Point(40,95)
    $CISButton3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $CISButton4                         = New-Object system.Windows.Forms.Button
    $CISButton4.text                    = "CompAdmin Templates"
    $CISButton4.width                   = 105
    $CISButton4.height                  = 35
    $CISButton4.Enabled                 = $true
    $CISButton4.location                = New-Object System.Drawing.Point(40,135)
    $CISButton4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

    $CISButton5                         = New-Object system.Windows.Forms.Button
    $CISButton5.text                    = "UserAdmin Templates"
    $CISButton5.width                   = 105
    $CISButton5.height                  = 35
    $CISButton5.Enabled                 = $true
    $CISButton5.location                = New-Object System.Drawing.Point(40,175)
    $CISButton5.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)


    $Form.controls.AddRange(@($CISButton1,$CISButton2,$CISButton3,$CISButton4,$CISButton5))


    $CISButton1.Add_Click({ SecuritySettingsGUI })

    $CISButton2.Add_Click({ WindowsFirewall })

    $CISButton3.Add_Click({ AdavncedAuditPolicyConfig })

    $CISButton4.Add_Click({ AdministrativeTemplatesComputer })

    $CISButton5.Add_Click({ AdministrativeTemplatesUser })

    [void]$Form.ShowDialog()
        }
    MainGUI
} #End Function
#Call Function
CISScript