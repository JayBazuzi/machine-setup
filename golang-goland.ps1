# This script
# iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/golang-goland.ps1 | iex

#Requires -RunAsAdministrator

iwr -useb cin.st | iex
choco feature enable --name=allowGlobalConfirmation
cinst golang 
cinst goland

Write-Host -Foreground yellow "Reboot when done"
