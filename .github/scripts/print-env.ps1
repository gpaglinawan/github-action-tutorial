# print-env.ps1

Write-Output "Printing GitHub Environment Variables:"
Get-ChildItem -Path Env: | Sort-Object Name | ForEach-Object { Write-Output "$($_.Name) = $($_.Value)" }