# How to run this file:
#  PS> iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/dev_environments/kotlin.ps1 | iex

iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/windows.ps1 | iex
iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/visual-studio.ps1 | iex

choco install openjdk
choco install gradle
# reload powershell to get environment running
cinst intellijidea

# Run tests via the command line (you may have to reload the terminal after installation before trying this):
# cargo test
