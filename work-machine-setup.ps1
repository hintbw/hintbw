winget install Microsoft.WindowsTerminal
winget install royalts ## Get License key from Spark
winget install Git.Git ## Git for Windows install
## Install Sophos SSL VPN application to get access to hosting VPN
## Download Todoist - the winget package seems to be the legacy one
winget install Microsoft.AzureStorageExplorer
winget install Microsoft.AzureDataStudio
winget install Microsoft.Bicep
winget install Microsoft.AzureCLI
winget install Microsoft.PowerShell
pwsh.exe
Install-Module Az

##### Install AzCopy v10
Invoke-WebRequest -Uri "https://aka.ms/downloadazcopy-v10-windows" -OutFile AzCopy.zip -UseBasicParsing
Expand-Archive ./AzCopy.zip ./AzCopy -Force
mkdir "$home/AzCopy"
Get-ChildItem ./AzCopy/*/azcopy.exe | Move-Item -Destination "$home\AzCopy\AzCopy.exe"
$userenv = [System.Environment]::GetEnvironmentVariable("Path", "User")
[System.Environment]::SetEnvironmentVariable("PATH", $userenv + ";$home\AzCopy", "User")

winget install Microsoft.VisualStudioCode
##### VS Code Extensions:
code --install-extension AzurePolicy.azurepolicyextension
code --install-extension ms-azuretools.vscode-azureresourcegroups
code --install-extension ms-azuretools.vscode-azurestorage
code --install-extension ms-azuretools.vscode-azurevirtualmachines
code --install-extension ms-azuretools.vscode-bicep
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-dotnettools.vscode-dotnet-runtime
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension ms-vscode-remote.remote-ssh-edit
code --install-extension ms-vscode-remote.remote-ssh-explorer
code --install-extension ms-vscode-remote.remote-wsl
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
code --install-extension ms-vscode.azure-account
code --install-extension ms-vscode.azurecli
code --install-extension ms-vscode.powershell
code --install-extension ms-vscode.vscode-node-azure-pack
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension ms-vsonline.vsonline
code --install-extension msazurermtools.azurerm-vscode-tools

## Visual Studio 2022
winget install Microsoft.VisualStudio.2022.Enterprise
