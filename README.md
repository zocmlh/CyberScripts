# Super-Duper-CyberScript
Property of Kalaheo High

part 2
create a text document on desktop with the name "users" and one with the name "administrators" and put the names of the users inside

Block ports:
New-NetFirewallRule -DisplayName "Block Outbound Port <0>" -Direction Outbound -LocalPort <0> -Protocol TCP -Action Block

Get Ports:
Get-NetTCPConnection
