# This script
# iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/java-intellij.ps1 | iex

#Requires -RunAsAdministrator

iwr -useb cin.st | iex
choco feature enable --name=allowGlobalConfirmation
choco install beyondcompare openjdk intellijidea-community maven gradle

cinst syspin --ignore-checksums
syspin "C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2020.3.1\bin\idea64.exe" "Pin to taskbar"

Write-Host -Foreground yellow "Reboot when done"
