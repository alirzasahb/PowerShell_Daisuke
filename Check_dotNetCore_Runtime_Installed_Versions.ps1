Write-Host "NET Core Installed Runtime(s):" 
(dir (Get-Command dotnet).Path.Replace('dotnet.exe', 'shared\Microsoft.NETCore.App')).Name
Read-Host -Prompt “Press Any Key To Exit...”