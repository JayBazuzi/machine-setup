# This script
# iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/javascript-webstorm.ps1 | iex

#Requires -RunAsAdministrator

iwr -useb cin.st | iex
choco feature enable --name=allowGlobalConfirmation
choco install beyondcompare
choco install nodejs
choco install yarn
choco install webstorm

Write-Host -Foreground yellow "Reboot when done"
