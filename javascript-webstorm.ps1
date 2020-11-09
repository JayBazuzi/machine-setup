# This script
# iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/javascript-webstorm.ps1 | iex

#Requires -RunAsAdministrator

iwr -useb cin.st | iex
choco feature enable --name=allowGlobalConfirmation
cinst nodejs
cinst yarn
cinst webstorm

Write-Host -Foreground yellow "Reboot when done"
