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

#Updates
Install-Module PSWindowsUpdate
Get-Command –module PSWindowsUpdate
Add-WUServiceManager -ServiceID 7971f918-a847-4430-9279-4a52d1efe18d
Get-WUInstall –MicrosoftUpdate –AcceptAll

##Account Management
net accounts /MINPWLEN:8
net accounts /MAXPWAGE:42
net accounts /MINPWAGE:3
net accounts /lockoutduration:30
net accounts /lockoutthreshold:5
net accounts /lockoutwindow:10

#Firewall
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "DisableCAD" /t REG_DWORD /d 0 /f
NetSh Advfirewall set allprofiles state on

pause
##Firewall
NetSh Advfirewall set allprofiles state on
 

#Remove Users
pause
echo "Continue only if you have completed the Forensic Questions" 
net user administrator /active:no 
net user guest /active:no 


#Account Management

get-localuser
pause
do {
    $user = Read-host -Prompt "Should a user be removed? Y/N"
   if ($user -eq "Y") {
      $deluser = Read-host -Prompt "What user?"
        net user $DelUser /DELETE | out-null }
   else {break}
   net user
   } while ($user -eq "Y")


do {
    $new = Read-host -Prompt "Should a user be added? Y/N"
    if ($new -eq "Y") {
        $newuser = Read-host -Prompt "Username?"
           net user $newuser /Add | out-null }
   else {break}
   net user
    } while ($new -eq "Y")
#Demote and Promote users
do {
    $demote = Read-host -Prompt "Should a user be demoted? Y/N"
   if ($demote -eq "Y") {
      $demoteuser = Read-host -Prompt "What user? (case senstitive btw)"
        net localgroup Administrators $demoteuser /delete | out-null }
   else {break}
   net localgroup Administrators
   net user
   } while ($user -eq "Y")

do {
    $promote = Read-host -Prompt "Should a user be promoted? Y/N"
   if ($promote -eq "Y") {
      $promoteuser = Read-host -Prompt "What user? (case senstitive btw)"
        net localgroup Administrators $promoteuser /add | out-null }
   else {break}
   net localgroup Administrators
   net user
   } while ($promoteuser -eq "Y")

#Set passwords for all accounts
$password = Get-WmiObject -class win32_useraccount -filter "LocalAccount='True'"
  foreach ($password in $password) {
    net user $password.Name BananaC@ctus01  /passwordreq:yes /logonpasswordchg:yes | out-null }
        wmic UserAccount set PasswordExpires=True | out-null
wmic UserAccount set Lockout=False | out-null

pause
#Services
sc query type= service > "%userprofile%\Desktop\ServicesList.txt"
echo "Go over and look for malicous services"
do {
    $service = Read-host -Prompt "Should a service be stopped? Y/N"
   if ($service -eq "Y") {
      $services = Read-host -Prompt "What service? (case senstitive btw)"
        stop-service $services
   else {break}
   } while ($service -eq "Y")
   
