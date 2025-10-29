@echo off
REM Restore UIRibbon.dll and UIRibbonRes.dll from renamed versions

SET sourcePath=C:\Windows\System32

echo Checking and restoring UIRibbon.dll...
IF EXIST "%sourcePath%\UIRibbon.dll2" (
    copy /Y "%sourcePath%\UIRibbon.dll2" "%sourcePath%\UIRibbon.dll.bak"
    ren "%sourcePath%\UIRibbon.dll2" "UIRibbon.dll"
    echo UIRibbon.dll restored.
) ELSE (
    echo UIRibbon.dll2 not found, skipping.
)

echo Checking and restoring UIRibbonRes.dll...
IF EXIST "%sourcePath%\UIRibbonRes.dll2" (
    copy /Y "%sourcePath%\UIRibbonRes.dll2" "%sourcePath%\UIRibbonRes.dll.bak"
    ren "%sourcePath%\UIRibbonRes.dll2" "UIRibbonRes.dll"
    echo UIRibbonRes.dll restored.
) ELSE (
    echo UIRibbonRes.dll2 not found, skipping.
)

echo Done.
pause
