@echo off

set /p dnsip=>nul

netsh interface ipv4 set dns name="ÒÔÌ«Íø" source=static addr=%dnsip% register=PRIMARY

pause