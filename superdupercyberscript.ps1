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

#Firewall
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "DisableCAD" /t REG_DWORD /d 0 /f
NetSh Advfirewall set allprofiles state on
##Updates not working
#Get-WUInstall -KBArticleID KB4489873,KB4489883 –AcceptAll

##Services

pause
##Firewall
NetSh Advfirewall set allprofiles state on

#Passwords
Import-Module ActiveDirectory

# Set the default password

 
# Get the list of accounts from the file on file
# List the user names one per line
$users = Import-Csv -Path D:\ser.csv

#Remove Users
pause
echo "Continue only if you have completed the Forensic Questions" 
net user administrator /active:no | out
net user guest /active:no | out

#Account Management
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
