# print-env.ps1

Write-Output "Printing GitHub Environment Variables:"
Get-ChildItem -Path Env: | Sort-Object Name | ForEach-Object { Write-Output "$($_.Name) = $($_.Value)" }

# Print SAPI_KEY separately (if it exists)
if ($env:SAPI_ACCOUNT_ID) {
    Write-Output "SAPI_KEY = $env:SAPI_ACCOUNT_ID"
} else {
    Write-Output "SAPI_KEY is not set."
}