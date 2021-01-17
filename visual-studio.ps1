# This script
# iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/visual-studio.ps1 | iex

#Requires -RunAsAdministrator

iwr -useb cin.st | iex
choco feature enable --name=allowGlobalConfirmation
cinst visualstudio2019professional visualstudio2019-workload-manageddesktop netfx-4.8-devpack
cinst resharper-ultimate-all ncrunch-vs2019
cinst nuget.commandline

Write-Host -Foreground yellow "Reboot when done"
