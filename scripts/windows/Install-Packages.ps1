#Requires -RunAsAdministrator

Get-Content .\packages.txt | ForEach-Object {
    winget.exe install --id $_ -s winget -e
}
