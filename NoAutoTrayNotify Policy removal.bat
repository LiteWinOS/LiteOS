
REM Remove NoAutoTrayNotify from HKCU and HKLM

echo Removing NoAutoTrayNotify from current user (HKCU)...
REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoAutoTrayNotify /f

echo Removing NoAutoTrayNotify from local machine (HKLM)...
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoAutoTrayNotify /f


pause
