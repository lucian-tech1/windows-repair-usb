@echo off
:: Network and system cleanup script

echo Running system cleanup and network repair...
echo.

:: Clear Temp Files
echo Clearing Temp Files...
del /q /f /s %TEMP%\*
del /q /f /s C:\Windows\Temp\*

:: Flush DNS Cache
echo Flushing DNS Cache...
ipconfig /flushdns

:: Reset TCP/IP Stack
echo Resetting TCP/IP Stack...
netsh int ip reset

:: Release IP Address
echo Releasing IP Address...
ipconfig /release

:: Renew IP Address
echo Renewing IP Address...
ipconfig /renew

:: Refresh network connections
echo Refreshing Network Connections...
netsh interface ip set address "Ethernet" dhcp

echo.
echo System Cleanup and Network Repair Complete!
pause
