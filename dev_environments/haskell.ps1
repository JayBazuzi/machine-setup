# How to run this file:
#  PS> iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/dev_environments/haskell.ps1 | iex

iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/windows.ps1 | iex
iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/visual-studio.ps1 | iex

choco install haskell-stack 
cinst intellijidea
# intellij haskell-force

#Running test does some install as well:
# stack test

