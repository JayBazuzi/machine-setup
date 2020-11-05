# How to run this file:
#  PS> iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/full.net.machine.ps1 | iex

iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/windows.ps1 | iex
iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/visual-studio.ps1 | iex

choco install nodejs
# reload powershell to get environment running
npm install --global elm-test@latest-0.19.1 
npm install --global elm-format@latest-0.19.1
cinst intellijidea

# intellij elm
# link elm compiler located in C:\Program Files (x86)\Elm\0.19.1\bin\elm.exe
# link elm-format and elm-test located in C:\Users\Administrator\AppData\Roaming\npm
# Run tests via the command line (you may have to reload the terminal after installation before trying this)
# elm-test
