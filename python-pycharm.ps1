# This script
# iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/python-pycharm.ps1 | iex

#Requires -RunAsAdministrator

iwr -useb cin.st | iex
choco feature enable --name=allowGlobalConfirmation
choco install beyondcompare
choco install python --pre
choco install pip
choco install pycharm

syspin "C:\Program Files (x86)\JetBrains\PyCharm 2020.3.2\bin\pycharm64.exe" "Pin to taskbar"

Write-Host -Foreground yellow "Reboot when done"
