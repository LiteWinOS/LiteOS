@echo off
SET ServiceName=AppXSvc
SET RegPath=HKLM\SYSTEM\CurrentControlSet\Services\%ServiceName%

echo -----------------------------------------
echo Enable or Disable Service: %ServiceName%
echo -----------------------------------------
echo Press E to Enable (Manual Start)
echo Press D to Disable ( Disabled )
set /p choice=Your choice: 

if /I "%choice%"=="E" (
    echo Enabling %ServiceName%...
    REG ADD "%RegPath%" /v Start /t REG_DWORD /d 3 /f
    echo %ServiceName% enabled (Manual ).
) else if /I "%choice%"=="D" (
    echo Disabling %ServiceName%...
    REG ADD "%RegPath%" /v Start /t REG_DWORD /d 4 /f
    echo %ServiceName% disabled (Disabled ).
) else (
    echo Invalid choice. Exiting...
)

pause


