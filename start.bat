@echo off
cd /d %~dp0

if exist install_requirements.bat (
    call install_requirements.bat
) else (
    echo File install_requirements.bat не найден.
)

start "" "dir\console.lnk" /c dir\main.exe
exit