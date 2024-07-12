@echo off

echo.
echo [1] 1PTON BOT
echo [2] SHUTLE BOT
echo.

set /p choice="[$] Number: "
cd dir
if %choice%==1 (
    start "" "multi_start_1pton.bat"
) else if %choice%==2 (
    start "" "multi_start_shutle.bat"
) else (
    echo Error number...
)

exit
