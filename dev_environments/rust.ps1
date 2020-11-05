# How to run this file:
#  PS> iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/full.net.machine.ps1 | iex

iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/windows.ps1 | iex
iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/visual-studio.ps1 | iex

choco install rust
choco install rustup.install
# reload powershell to get environment running
rustup self update
rustup component add rustfmt
rustup component add clippy

cinst intellijidea

# Run tests via the command line (you may have to reload the terminal after installation before trying this):
# cargo test
