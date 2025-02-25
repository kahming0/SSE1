# Run as Administrator

$backupFile = "$env:USERPROFILE\Desktop\service_backup.json"

if (Test-Path $backupFile) {
    $backup = Get-Content $backupFile | ConvertFrom-Json

    foreach ($entry in $backup) {
        Write-Output "Restoring $($entry.Name) to $($entry.StartupType)..."
        Set-Service -Name $entry.Name -StartupType $entry.StartupType

        if ($entry.Status -eq "Running") {
            Start-Service -Name $entry.Name -ErrorAction SilentlyContinue
        }
    }

    Write-Output "All services restored."
} else {
    Write-Output "Backup file not found. Cannot restore services."
}