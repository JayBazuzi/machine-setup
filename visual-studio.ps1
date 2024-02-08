# This script
# iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/visual-studio.ps1 | iex

#Requires -RunAsAdministrator

iwr -useb cin.st | iex
choco feature enable --name=allowGlobalConfirmation

choco install netfx-4.8-devpack
choco install visualstudio2022enterprise
choco install visualstudio2022-workload-manageddesktop
choco install resharper-ultimate-all
choco install ncrunch-vs2022
choco install dotnetcore

choco install nuget.commandline
nuget.exe sources add -Name nuget.org -Source https://api.nuget.org/v3/index.json

choco install syspin --ignore-checksums # has a broken checksum
syspin "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\IDE\devenv.exe" "Pin to taskbar"

Write-Host -Foreground yellow "Reboot when done"
