# Super-Duper-CyberScript
Property of Kalaheo High



Enable Scripting:
set-executionpolicy remotesigned



Block ports:
New-NetFirewallRule -DisplayName "Block Outbound Port <0>" -Direction Outbound -LocalPort <0> -Protocol TCP -Action Block

Get Ports:
Get-NetTCPConnection

Enable Scripting:
set-executionpolicy remotesigned
