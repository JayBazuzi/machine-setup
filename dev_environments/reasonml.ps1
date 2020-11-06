# How to run this file:
#  PS> iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/dev_environments/reasonml.ps1 | iex

iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/windows.ps1 | iex
iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/visual-studio.ps1 | iex

choco install nodejs
# reload powershell to get environment running
npm install -g bs-platform 
cinst intellijidea

# intellij reasonML
# When you open a ReasonML project, allow IntelliJ to install the ReasonML plugin it suggests
# Run tests via the command line (you may have to reload the terminal after installation before trying this):
# run: npm install
# Open two shells, and in the first, start the build process.
# run: npm start
# run: npm test
