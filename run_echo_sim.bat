@echo off
setlocal
cd /d "%~dp0"
set INTERNAL_STORAGE=%~dp0internal_storage

echo =======================================================
echo Snowsky Echo Mini - Native Firmware Desktop Simulator
echo =======================================================
echo Controls:
echo   Mouse Drag     : Click and drag anywhere on casing to move window
echo   Edge Buttons   : Tactile buttons attached to rotating chassis edges
echo   Rotate CW      : Click [ROTATE] button or press 'R' key
echo   Open Storage   : Click [FILES] button or press 'F' key
echo   Power Off / On : Press and hold [POWER] or 'P' key for standby
echo                    Press and hold [POWER] or 'P' again to turn back on!
echo   Close Window   : Click [X] in the top utility bar
echo.
echo Keyboard Shortcuts:
echo   Up / Down      : Navigate Menu / Volume
echo   Enter / Space  : Play / Pause / Select
echo   Escape / Back  : Back / Return
echo   M / Tab        : Menu / Options
echo   R              : Rotate 90 deg clockwise
echo   F              : Open internal storage in Explorer
echo   P              : Tap = Backlight sleep, Hold = Power Off / Power On
echo =======================================================
echo.

if not exist "%INTERNAL_STORAGE%" mkdir "%INTERNAL_STORAGE%"
if not exist "%INTERNAL_STORAGE%\.echo" mkdir "%INTERNAL_STORAGE%\.echo"

echo_sim.exe --scale 2 --internal "%INTERNAL_STORAGE%" --system-dir "%INTERNAL_STORAGE%\.echo"
if errorlevel 1 pause