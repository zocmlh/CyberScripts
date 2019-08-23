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
