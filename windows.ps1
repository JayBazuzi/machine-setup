# This script
# iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/windows.ps1 | iex
 
Write-Host -Foreground yellow "Warning: You will need to Reboot when done or AnyDesk will not work properly"

#Requires -RunAsAdministrator

iwr -useb cin.st | iex
choco feature enable --name=allowGlobalConfirmation
choco feature disable --name=showDownloadProgress
cinst win-no-annoy
cinst vscode
cinst googlechrome setdefaultbrowser
SetDefaultBrowser.exe chrome
cinst git poshgit github-desktop
Set-Alias github $env:LOCALAPPDATA\GitHubDesktop\bin\github.bat
cinst notepadplusplus
cinst beyondcompare

Invoke-WebRequest https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/windows_amd64/AmazonSSMAgentSetup.exe -O AmazonSSMAgentSetup.exe	
.\AmazonSSMAgentSetup.exe /S

# delete annoying Windows notification sounds
Remove-Item -ErrorAction SilentlyContinue -Recurse HKCU:\AppEvents\Schemes
Set-Service Audiosrv -StartupType Automatic

# Show seconds in the clock so screen sharing latency is obvious to all
Set-ItemProperty HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced ShowSecondsInSystemClock 1
# Open new explorer windows to This PC instead of Quick Access
Set-ItemProperty HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced LaunchTo 1

@(
    'coenraads.bracket-pair-colorizer-2'
    'wmaurer.change-case'
    'streetsidesoftware.code-spell-checker'
    'ryu1kn.partial-diff'
    'ms-vscode.powershell'
    'mohsen1.prettify-json'
    'vscode-icons-team.vscode-icons'
) | % { & "C:\Program Files\Microsoft VS Code\bin\code.cmd" --install-extension $_ }

@'
{
    "diffEditor.ignoreTrimWhitespace": true,
    "diffEditor.renderSideBySide": false,
    
    "editor.minimap.enabled": true,
    "editor.renderControlCharacters": true,
    "editor.renderWhitespace": "all",
    
    "git.autofetch": true,
    "git.autofetchPeriod": 1,
    "git.enableSmartCommit": true,
    "git.fetchOnPull": true,

    "workbench.iconTheme": "vscode-icons",
    "workbench.startupEditor": "newUntitledFile",

    "files.autoSave": "afterDelay"
}
'@ | Out-File -Encoding ASCII $env:APPDATA\Code\User\settings.json


$ProgressPreference = 'SilentlyContinue'
$mobtimeVersion = '1.7.4'
iwr https://github.com/GreatWebGuy/MobTime/releases/download/v$mobtimeVersion/MobTime-$mobtimeVersion.msi -O MobTime.msi
./MobTime.msi /qr

& "${env:ProgramFiles}\Google\Chrome\Application\chrome.exe" https://app.mindmup.com/map/new

# Clean up the task bar
cinst syspin --ignore-checksums
syspin "C:\Program Files\Google\Chrome\Application\chrome.exe" "Pin to taskbar"
syspin "C:\Users\Administrator\AppData\Local\GitHubDesktop\GitHubDesktop.exe" "Pin to taskbar"
syspin  "C:\Users\Administrator\AppData\Local\MobTime\MobTime.exe" "Pin to taskbar"
syspin "C:\Program Files\internet explorer\iexplore.exe" "Unpin from taskbar"

cinst taskbar-winconfig --params "'/CORTANA:no /INK:no /PEOPLE:no /TASKVIEW:no /KEYBOARD:no'"
cuninst taskbar-winconfig
 
# Often fails because anydesk chocolate authoring is bad
cinst anydesk
syspin "C:\ProgramData\chocolatey\bin\AnyDesk.exe" "Pin to taskbar"

