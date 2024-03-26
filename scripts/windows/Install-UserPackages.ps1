Get-Content .\userpackages.txt | ForEach-Object {
    winget.exe install --id $_ -s winget -e
}
