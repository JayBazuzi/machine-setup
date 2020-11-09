# How to run this file:
#  PS> iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/full.net.machine.ps1 | iex

iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/windows.ps1 | iex
iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/visual-studio.ps1 | iex

choco install swiftforwindows
# reload powershell to get environment running
"C:\Swift\bin\swiftc.exe" -swift-version 4 "C:\Swift\Samples\Hello\Hello.swift" -o "C:\Swift\RuntimeEnv\Hello.exe"
cinst intellijidea

# Run the following command: "C:\Swift\bin\Swift for Windows.exe"
# It loads a dialog from which you can select a file to compile
# The compiled file is output by default to C:\Swift\RuntimeEnv
# Running the executable in that folder seems to work.
# Run tests via the command line (you may have to reload the terminal after installation before trying this)
# "C:\Swift\bin\swiftc.exe" -swift-version 4 "C:\Users\Administrator\Exercism\swift\hello-world\Sources\HelloWorld\HelloWorld.swift" -o "C:\Swift\RuntimeEnv\HelloWorld.exe" && "C:\Swift\RuntimeEnv\HelloWorld.exe"
