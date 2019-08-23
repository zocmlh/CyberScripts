echo "=======================================================================================================
 
                           W E L C O M E   T O  S U PE R  D U P E R  C Y B E R S C R I P T                        

                                    B E T A   V E R S I O N  0. 0 1                                       

======================================================================================================="
Start-Sleep 2

echo "=======================================================================================================
 
                          C R E A T E D  F O R  P O W E R S H E L L                        

                                     B Y  T Y L E R 
                                
                                 (tylerkhooang for roen)                             

======================================================================================================="
Start-Sleep 5 
##Account Management

net accounts /MINPWLEN:8
net accounts /MAXPWAGE:42
net accounts /MINPWAGE:3
net accounts /lockoutduration:30
net accounts /lockoutthreshold:5
net accounts /lockoutwindow:10
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "DisableCAD" /t REG_DWORD /d 0 /f
##Firewall
NetSh Advfirewall set allprofiles state on
##Updates
Get-WUInstall -KBArticleID KB4489873,KB4489883 –AcceptAll

##Services
Set-Service Telnet -StartupType Disabled
Set-Service IIS -StartupType Disabled
Set-Service "Web Services" -StartupType Disabled
Set-Service "Xbox Live Game Save" -StartupType Disabled
Set-Service "Xbox Live Auth Manager" -StartupType Disabled
Set-Service "AllJoyn Router Service" -StartupType Disabled
Set-Service "Bluetooth Support Service" -StartupType Disabled
Set-Service "Geolocation Service" -StartupType Disabled
Set-Service "Phone Service" -StartupType Disabled
Set-Service "Touch Keyboard and Handwriting Panel Service" -StartupType Disabled
Set-Service "Windows Biometric Service" -StartupType Disabled
Set-Service "Windows Mobile Hotspot Service" -StartupType Disabled
Set-Service "Adobe Acrobat Update Services" -StartupType Disabled
Set-Service "Downloaded Maps Manager" -StartupType Disabled
Set-Service "Internet Explorer ETW Collecter Service" -StartupType Disabled
Set-Service "Print Spooler" -StartupType Disabled
Set-Service "Skype Updater" -StartupType Disabled
Set-Service "IIS Admin Servicee" -StartupType Disabled
Set-Service "Computer Browser" -StartupType Disabled
Set-Service "Clipbook" -StartupType Disabled

echo "Do not worry. Object not found means it has been disabled already!"
pause
##Firewall
#NetSh Advfirewall set allprofiles state on

