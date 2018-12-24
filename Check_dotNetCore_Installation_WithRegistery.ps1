$DotNETCoreUpdatesPath = "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Updates\.NET Core" 
$DotNetCoreItems = Get-Item -ErrorAction Stop -Path $DotNETCoreUpdatesPath 
$NotInstalled = $True 
$DotNetCoreItems.GetSubKeyNames() | Where { $_ -Match "Microsoft .NET Core.*Windows Server Hosting" } | ForEach-Object { 
    $NotInstalled = $False 
    Write-Host "The Host Has Installed $_" 
} 
If ($NotInstalled) { 
    Write-Host "Can Not Find ASP.NET Core Installed On The Host"
}

Read-Host -Prompt “Press Any Key To Exit...”