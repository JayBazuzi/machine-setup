# This script
# iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/java-intellij.ps1 | iex

#Requires -RunAsAdministrator

iwr -useb cin.st | iex
choco feature enable --name=allowGlobalConfirmation
choco install elixir
cinst intellijidea

# Install the intellij elixir plugin


Write-Host -Foreground yellow "Reboot when done"
