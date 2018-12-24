Write-Host "NET Core Installed SDK(s):" 
(dir (Get-Command dotnet).Path.Replace('dotnet.exe', 'sdk')).Name
Read-Host -Prompt “Press Any Key To Exit...”