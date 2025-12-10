New-Item -ItemType Directory -Path "dist" -Force | Out-Null

Get-ChildItem resume-*.typ | ForEach-Object {
    $out = Join-Path "dist" ([System.IO.Path]::GetFileNameWithoutExtension($_.Name) + ".pdf")
    typst compile $_.FullName $out
}
