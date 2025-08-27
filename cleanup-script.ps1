param (
    [string]$TargetDir = "C:\Temp",
    [int]$DaysOld = 7,
    [string]$FileType = "*.txt",
    [switch]$DryRun
)

$cutoff = (Get-Date).AddDays(-$DaysOld)
$files = Get-ChildItem -Path $TargetDir -Filter $FileType | Where-Object { $_.LastWriteTime -lt $cutoff }

foreach ($file in $files) {
    if ($DryRun) {
        Write-Host "Would delete: $($file.FullName)"
    } else {
        Remove-Item $file.FullName -Force
        Write-Host "Deleted: $($file.FullName)"
    }
}
