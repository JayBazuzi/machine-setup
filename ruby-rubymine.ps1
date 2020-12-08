# This script
# iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/ruby-rubymine.ps1 | iex

#Requires -RunAsAdministrator

iwr -useb cin.st | iex
choco feature enable --name=allowGlobalConfirmation
choco install beyondcompare
choco install ruby
choco install rubymine


Write-Host -Foreground yellow "Reboot when done"
