Set-Alias -Name ls -Value Get-ChildItem -Option AllScope
Set-Alias -Name grep -Value Select-String -Option AllScope
Set-Alias -Name touch -Value New-Item -Option AllScope
Set-Alias -Name rm -Value Remove-Item -Option AllScope
Set-Alias -Name mv -Value Move-Item -Option AllScope
Set-Alias -Name cp -Value Copy-Item -Option AllScope
Set-Alias -Name pwd -Value Get-Location -Option AllScope
Set-Alias -Name vs -Value "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\devenv.exe" -Option AllScope

Invoke-Expression (&starship init powershell)