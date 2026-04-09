@echo off

set "target=%~1"

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
"$ip = (Test-Connection -ComputerName $env:COMPUTERNAME -Count 1).IPV4Address.IPAddressToString; ^
$url = \"http://${ip}:5000\"; ^
try { Set-Clipboard -Value $url } catch { $url ^| clip }; ^
$dufs = Start-Process dufs -ArgumentList ('--allow-upload --allow-search --allow-archive -p 5000 \"' + '%target%' + '\"') -PassThru; ^
Start-Process 'chrome.exe' \"--new-window https://api.qrserver.com/v1/create-qr-code/?size=500x500&data=$url\"; "