@echo off

set "target=%~1"

for /f "tokens=2 delims=:" %%i in ('ipconfig ^| findstr /C:"IPv4"') do set ip=%%i
set ip=%ip: =%

set url=http://%ip%:3923

echo %url% | clip

echo Sharing: %target%
echo Server: %url%
echo.

copyparty --qr --chdir "%target%"

pause