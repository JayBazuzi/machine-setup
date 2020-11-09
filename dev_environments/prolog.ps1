# How to run this file:
#  PS> iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/dev_environments/prolog.ps1 | iex

iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/windows.ps1 | iex
iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/visual-studio.ps1 | iex

choco install SWI-Prolog
cinst intellijidea


# Run tests via the command line (you may have to reload the terminal after installation before trying this):
# swipl -f hello_world.pl -s hello_world_tests.plt -g run_tests,halt -t 'halt(1)'
