```bat
@echo off
setlocal

set "URL=https://dl.google.com/chrome/install/latest/chrome_installer.exe"
set "FILE=%TEMP%\chrome_installer.exe"

echo.
echo ========================================
echo        Google Chrome Installer
echo ========================================
echo.
echo Downloading Chrome...
echo.

powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "$wc = New-Object System.Net.WebClient; $wc.DownloadFile('%URL%', '%FILE%')"

if errorlevel 1 goto DOWNLOAD_FAILED

if not exist "%FILE%" goto DOWNLOAD_FAILED

echo.
echo Download complete.
echo Starting installer...
echo.

start /wait "" "%FILE%"

if errorlevel 1 (
    echo.
    echo Chrome installer returned an error.
) else (
    echo.
    echo Chrome installation finished.
)

del /q "%FILE%" >nul 2>&1
goto END

:DOWNLOAD_FAILED
echo.
echo ERROR: Failed to download Chrome.
echo Check your Internet connection or TLS settings.
if exist "%FILE%" del /q "%FILE%" >nul 2>&1

:END
echo.
pause
endlocal
```
