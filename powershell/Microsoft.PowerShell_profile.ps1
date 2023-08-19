Set-Alias -Name ls -Value Get-ChildItem
Set-Alias -Name grep -Value Select-String
Set-Alias -Name touch -Value New-Item
Set-Alias -Name rm -Value Remove-Item
Set-Alias -Name mv -Value Move-Item
Set-Alias -Name cp -Value Copy-Item
Set-Alias -Name pwd -Value Get-Location

Invoke-Expression (&starship init powershell)