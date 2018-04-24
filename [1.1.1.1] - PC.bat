@echo off
::Khairii Azwar.
title Cloudflare DNS Changer 
color 3
echo - Cloudflare DNS Changer (1.1.1.1) - 
ping localhost -n 2 >nul 2>nul
echo Changing DNS started.
echo This may take a minute . . .
netsh interface ipv4 set dns name="Local Area Connection" static 1.1.1.1 primary >nul 2>nul
netsh interface ipv4 add dns name="Local Area Connection" 1.0.0.1 >nul 2>nul
echo(
ipconfig /flushdns >nul 2>nul
echo Thanks for using this Cloudflare DNS Changer! 
echo Press any key to exit . . .
pause >nul 2>nul
