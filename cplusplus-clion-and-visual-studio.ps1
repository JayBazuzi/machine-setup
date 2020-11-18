# To run this script directly, run this in an elevated admin PowerShell prompt:
#     Invoke-WebRequest -UseBasicParsing https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/cplusplus-clion-and-visual-studio.ps1 | Invoke-Expression

#Requires -RunAsAdministrator

iwr -useb cin.st | iex
choco feature enable --name=allowGlobalConfirmation

# -------------------------------------------------------
# Diff Tools
cinst  tortoisesvn

# -------------------------------------------------------
# IDEs and editors
cinst clion-ide
cinst visualstudio2019community
cinst visualstudio2019-workload-nativedesktop

cinst resharpercpp

# -------------------------------------------------------
# Build tools
cinst cmake.install --installargs 'ADD_CMAKE_TO_PATH=System'
cinst ninja conan

# -------------------------------------------------------
# CygWin
# cinst cygwin
# C:\tools\cygwin\cygwinsetup.exe  --quiet-mode --packages gcc-core
# C:\tools\cygwin\cygwinsetup.exe  --quiet-mode --packages make
# C:\tools\cygwin\cygwinsetup.exe  --quiet-mode --packages gcc-g++

# -------------------------------------------------------
# mingw
# cinst mingw

Write-Host -Foreground yellow "Reboot when done"
