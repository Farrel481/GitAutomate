
param(
  [string]$Repo = "C:\Users\Farrel Satriano\OneDrive\GitAutomate",
  [string]$Branch = "main",
  [int]$DelaySeconds = 10
)

Set-Location $Repo

$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = $Repo
$watcher.IncludeSubdirectories = $true
$watcher.Filter = "*.*"
$watcher.EnableRaisingEvents = $true

$action = {
  Start-Sleep -Seconds $using:DelaySeconds

  Set-Location $using:Repo

  # Skip if no Git changes remain
  if (-not (git status --porcelain)) { return }

  git add -A
  $message = "Auto update: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
  git commit -m $message
  git push origin $using:Branch
}

$handlers = @(
  Register-ObjectEvent $watcher Changed -Action $action
  Register-ObjectEvent $watcher Created -Action $action
  Register-ObjectEvent $watcher Deleted -Action $action
  Register-ObjectEvent $watcher Renamed -Action $action
)

Write-Host "Watching $Repo. Press Ctrl+C to stop."
while ($true) { Start-Sleep 1 }