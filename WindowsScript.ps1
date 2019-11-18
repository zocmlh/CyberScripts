echo "=======================================================================================================
 
                           W E L C O M E   T O  S U PE R  D U P E R  C Y B E R S C R I P T                        
                                    B E T A   V E R S I O N  0.5                                     
======================================================================================================="
Start-Sleep 2

echo "=======================================================================================================
 
                          C R E A T E D  F O R  P O W E R S H E L L                        
                                     B Y  T Y L E R 
                                                           
======================================================================================================="
Start-Sleep 5 

#Firefox Updater



#Updates
Install-Module PSWindowsUpdate
Get-Command –module PSWindowsUpdate
Add-WUServiceManager -ServiceID 7971f918-a847-4430-9279-4a52d1efe18d
Get-WUInstall –MicrosoftUpdate –AcceptAll

##Account Management
net accounts /MINPWLEN:8
net accounts /MAXPWAGE:42
net accounts /MINPWAGE:10
net accounts /UNIQUEPW:4
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

#Check intalled programs
Function Check-InstalledSoftware ($display_name) {
    Return Get-ItemProperty $registry_paths -ErrorAction SilentlyContinue | Where-Object { $_.DisplayName -like $display_name }
} # function
  
#Programs
do {
$DeleteProg = Read-Host -Prompt "Should a program be deleted? Y/N"
    if ($DeleteProg -eq "Y") {
        $Programs
        $DelProg = Read-Host -Prompt "What program?"
            Remove-Item "C:\Program Files\$DelProg" -Recurse -ErrorAction SilentlyContinue | out-null 
            Remove-Item "C:\Program Files (x86)\$DelProg" -Recurse -ErrorAction SilentlyContinue | out-null 
            Remove-Item "C:\Program Data\$DelProg" -Recurse -ErrorAction SilentlyContinue | out-null }
    else {break}
    } while ($DeleteProg -eq "Y")

#Turn on automatic updates
$AutoUpdate = (New-Object -com "Microsoft.Update.AutoUpdate").Settings
$AutoUpdate.NotificationLevel = 4
$AutoUpdate.Save()

#Disable remote desktop
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" -Name "fDenyTSConnections" -Value 1 | out-null

#Auditing
auditpol.exe /set /category:* /success:enable | out-null
auditpol.exe /set /category:* /failure:enable | out-null

#Disabling Services 
$BadService = @("tapisrv","bthserv","mcx2svc","remoteregistry","seclogon","telnet","tlntsvr","p2pimsvc","simptcp","fax","msftpsvc","cscservice","fax","msftpsvc","webclient")
foreach($BadService in $DisableServices){
Stop-Service $BadService -Force -ErrorAction SilentlyContinue | out-null
Set-Service $BadService -StartupType Disabled -ErrorAction SilentlyContinue | out-null}



