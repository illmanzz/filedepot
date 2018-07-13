@echo off
for /f "tokens=2 delims=: " %%A in (
  'nslookup myip.opendns.com. resolver1.opendns.com 2^>NUL^|find "Address:"'
) Do set ip=%%A
echo Optimization running.
taskkill /IM "armsvc.exe" /T /F >nul 2>nul 
taskkill /IM "software_reporter_tool.exe" /T /F >nul 2>nul 
taskkill /IM "gxxsvc.exe" /T /F >nul 2>nul 
taskkill /IM "PnkBstrA.exe" /T /F >nul 2>nul 
taskkill /IM "Service_KMS.exe" /T /F >nul 2>nul 
taskkill /IM "winlock.exe" /T /F >nul 2>nul 
ping %ip% -t >nul 2>nul