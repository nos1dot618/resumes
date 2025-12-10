New-Item -ItemType Directory -Path "dist" -Force | Out-Null

Get-ChildItem "resumes/resume-*.typ" | ForEach-Object {
    $out = Join-Path "dist" ([System.IO.Path]::GetFileNameWithoutExtension($_.Name) + ".pdf")
    typst compile --root "./" $_.FullName $out
    Write-Host "[INFO] Generated '$out'."
}
