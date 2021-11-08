# How to run this file:
#  PS> iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/dev_environments/elm.ps1 | iex

iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/windows.ps1 | iex

choco install nodejs
# reload powershell to get environment running
npm install --global elm
npm install --global elm-test@latest-0.19.1
npm install --global elm-format@latest-0.19.1

cinst vscode
@(
    'Elmtooling.elm-ls-vscode'
) | % { & "C:\Program Files\Microsoft VS Code\bin\code.cmd" --install-extension $_ }


iwr -useb https://gist.githubusercontent.com/mch/182b5ee0500b2b2393adfd3db5cab848/raw/f5e881d4845dd2b2b7b034599770d637459e66ad/Elm%2520starter%2520project | iex
