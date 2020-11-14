#Updates
Install-Module PSWindowsUpdate
Get-Command –module PSWindowsUpdate
Add-WUServiceManager -ServiceID 7971f918-a847-4430-9279-4a52d1efe18d
Get-WUInstall –MicrosoftUpdate –AcceptAll

$AutoUpdate = (New-Object -com "Microsoft.Update.AutoUpdate").Settings
$AutoUpdate.NotificationLevel = 4
$AutoUpdate.Save()


#Auditing
net accounts /MINPWLEN:8
net accounts /MAXPWAGE:42
net accounts /MINPWAGE:10
net accounts /UNIQUEPW:4
net accounts /lockoutduration:30
net accounts /lockoutthreshold:5
net accounts /lockoutwindow:10

auditpol.exe /set /category:* /success:enable | out-null
auditpol.exe /set /category:* /failure:enable | out-null

Set-Content config eventlog start= auto


#Disabling Services 
$BadService = @("tapisrv","bthserv","mcx2svc","remoteregistry","seclogon","telnet","tlntsvr","p2pimsvc","simptcp","fax","msftpsvc","cscservice","fax","msftpsvc","webclient","W3SVC","IIS","Smtpsvc","Nntpsvc","Iisadmin","Msftpsvc",	)
foreach($BadService in $BadService){
Stop-Service $BadService -Force -ErrorAction SilentlyContinue | out-null
Set-Service $BadService -StartupType Disabled -ErrorAction SilentlyContinue | out-null}

#Firewall
NetSh Advfirewall set allprofiles state on
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "DisableCAD" /t REG_DWORD /d 0 /f


#Set all passwords
$password = Get-WmiObject -class win32_useraccount -filter "LocalAccount='True'"
  foreach ($password in $password) {
    net user $password.Name BananaC@ctus01  /passwordreq:yes /logonpasswordchg:yes | out-null }
        wmic UserAccount set PasswordExpires=True | out-null
wmic UserAccount set Lockout=False | out-null


#Remote Desktop
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" -Name "fDenyTSConnections" -Value 1 | out-null
