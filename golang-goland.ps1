# This script
# iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/golang-goland.ps1 | iex

#Requires -RunAsAdministrator

iwr -useb cin.st | iex
choco feature enable --name=allowGlobalConfirmation
choco install beyondcompare golang goland

Write-Host -Foreground yellow "Reboot when done"
