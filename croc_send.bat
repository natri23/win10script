@echo off

set "target=%~1"

echo Sending: %target%
echo.

croc send "%target%"

echo.
echo Done. Press any key to exit...
pause >nul