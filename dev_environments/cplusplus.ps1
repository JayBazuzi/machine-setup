# How to run this file:
#  PS> iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/dev_environments/cplusplus.ps1 | iex

iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/windows.ps1 | iex
iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/cplusplus-clion-and-visual-studio.ps1 | iex

# Clone repo
& "C:\Program Files\Git\cmd\git.exe" clone https://github.com/approvals/ApprovalTests.cpp.StarterProject.git C:\Code\ApprovalTests.cpp.StarterProject

