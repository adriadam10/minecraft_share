@echo off
set /p domain="What is the domain? "
curl https://mcsrvstat.us/server/%domain% | find /i "Could not get"
if not errorlevel 1 (
   echo "Server is going to start"
   duckdns.ps1
   minecraft.bat
)