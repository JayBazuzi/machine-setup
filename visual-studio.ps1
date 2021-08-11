# This script
# iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/visual-studio.ps1 | iex

#Requires -RunAsAdministrator

iwr -useb cin.st | iex
choco feature enable --name=allowGlobalConfirmation
cinst visualstudio2019professional visualstudio2019-workload-manageddesktop netfx-4.8-devpack
cinst resharper-ultimate-all ncrunch-vs2019

cinst nuget.commandline
nuget.exe sources add -Name nuget.org -Source https://api.nuget.org/v3/index.json

cinst syspin --ignore-checksums # has a broken checksum
syspin "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\IDE\devenv.exe" "Pin to taskbar"

Write-Host -Foreground yellow "Reboot when done"
