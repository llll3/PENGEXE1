@echo off

setlocal

set count=0
cd..
for /f %%a in ('findstr /R /N "^" api\api_key_1pton.txt ^| findstr /C:"^$"') do set count=%%a

setlocal enabledelayedexpansion
for /f "tokens=1 delims=-" %%a in (api\api_key_1pton.txt) do (
  set /a count-=1  
  start "" "dir\console.lnk" /c dir\main.exe 1 1 %%a
  timeout /t 1 >nul  
  if !count! equ 0 goto endloop
)
:endloop
endlocal
endlocal