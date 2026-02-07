function Log {
    param (
        [Parameter(Mandatory)]
        [string]$Level,
        [Parameter(Mandatory)]
        [ConsoleColor]$Color,
        [Parameter(Mandatory)]
        [string]$Message
    )
    Write-Host "[" -NoNewline
    Write-Host "$Level" -ForegroundColor $Color -NoNewline
    Write-Host "] $Message"
}

function Error {
    param (
        [Parameter(Mandatory)]
        [string]$Message,
        [switch]$Exit
    )
    Log -Level "ERROR" -Color Red -Message $Message
    if ($Exit) {
        exit 1
    }
}

function Info {
    param (
        [Parameter(Mandatory)]
        [string]$Message
    )
    Log -Level "INFO" -Color Blue -Message $Message
}

New-Item -ItemType Directory -Path "dist" -Force | Out-Null

Get-ChildItem "resumes/resume-*.typ" | ForEach-Object {
    $out = Join-Path "dist" ([System.IO.Path]::GetFileNameWithoutExtension($_.Name) + ".pdf")
    typst compile --root "./" $_.FullName $out
    Info -Message "Generated '$out'."
}
