
# This script
# iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/php_phpstorm.ps1 | iex

#Requires -RunAsAdministrator

iwr -useb cin.st | iex
choco feature enable --name=allowGlobalConfirmation
choco install php
choco install composer
choco install phpstorm --pre 

cinst syspin --ignore-checksums
# syspin "C:\Program Files (x86)\JetBrains\WebStorm 2020.3.2\bin\webstorm64.exe" "Pin to taskbar"

Write-Host -Foreground yellow "Reboot when done"
