@echo off

set /p dnsip=>nul

netsh interface ipv4 set dns name="��̫��" source=static addr=%dnsip% register=PRIMARY

pause