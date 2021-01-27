# This script
# iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/javascript-webstorm.ps1 | iex

#Requires -RunAsAdministrator

iwr -useb cin.st | iex
choco feature enable --name=allowGlobalConfirmation
choco install beyondcompare
choco install nodejs
choco install yarn
choco install webstorm

cinst syspin --ignore-checksums
syspin "C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2020.3.1\bin\idea64.exe" "Pin to taskbar"
syspin "C:\Program Files (x86)\JetBrains\WebStorm 2020.3.2\bin\webstorm64.exe" "Pin to taskbar"

Write-Host -Foreground yellow "Reboot when done"
