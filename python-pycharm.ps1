# This script
# iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/python-pycharm.ps1 | iex

#Requires -RunAsAdministrator

iwr -useb cin.st | iex
choco feature enable --name=allowGlobalConfirmation
choco install beyondcompare
choco install python --pre 
choco install pip
choco install pycharm


Write-Host -Foreground yellow "Reboot when done"
