# print-env.ps1

Write-Output "Printing GitHub Environment Variables:"
Get-ChildItem -Path Env: | Sort-Object Name | ForEach-Object { Write-Output "$($_.Name) = $($_.Value)" }

[System.Environment]::GetEnvironmentVariable("SAPI_KEY", "Process")
[System.Environment]::GetEnvironmentVariable("SAPI_KEY", "User")
[System.Environment]::GetEnvironmentVariable("SAPI_KEY", "Machine")

# Print SAPI_KEY separately (if it exists)
if ($env:SAPI_ACCOUNT_ID) {
    Write-Output "SAPI_KEY = $env:SAPI_ACCOUNT_IDgit add .github/scripts/print-env.ps1"
} else {
    Write-Output "SAPI_KEY is not set."
}