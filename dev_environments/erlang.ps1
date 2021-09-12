# How to run this file:
#  PS> iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/dev_environments/erlang.ps1 | iex

iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/windows.ps1 | iex
iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/visual-studio.ps1 | iex

choco install erlang
choco install rebar3
cinst intellijidea

# intellij erlang
# Run tests via the command line (you may have to reload the terminal after installation before trying this)
# rebar3 eunit
