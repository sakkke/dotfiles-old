#Requires -RunAsAdministrator

function Install-Profile
{
  $srcPath = $args[0]

  $pwsh = (Get-Process -Id $PID).Path
  & $pwsh -Command {
    $srcPath = $args[0]

    Set-Location $srcPath
    Get-ChildItem -Recurse -Directory |
      ForEach-Object { $_.FullName } |
        ForEach-Object {
          $absPath = $_
          $prefixLength = $PWD.Path.Length + 1
          $relPath = $absPath.Substring($prefixLength)
          $relPath | ForEach-Object {
            $path = "${HOME}\${_}"
            Write-Host "Creating directory '$path'"
            New-Item $path -ItemType Directory -ErrorAction SilentlyContinue > $null
          }
        }
  } -args $args
  & $pwsh -Command {
    $srcPath = $args[0]

    Set-Location $srcPath
    Get-ChildItem -Recurse -File |
      ForEach-Object { $_.FullName } |
        ForEach-Object {
          $absPath = $_
          $prefixLength = $PWD.Path.Length + 1
          $relPath = $absPath.Substring($prefixLength)
          $relPath | ForEach-Object {
            $path = "${HOME}\${_}"
            Write-Host "Linking from '$path' to '$absPath'"
            New-Item $path -ItemType SymbolicLink -Value $absPath -Force > $null
          }
        }
  } -args $args
}

if ( $args.Count -gt 0 )
{
  $srcPath = $args[0]
  Install-Profile $srcPath
}
else
{
  foreach ($srcPath in Get-ChildItem .\src\windows\*)
  {
    $path = $srcPath.FullName
    Install-Profile $path
  }
}
