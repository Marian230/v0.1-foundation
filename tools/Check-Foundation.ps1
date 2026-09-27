# Documentation structure check only; see README for its limits.
[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'
$repoRoot = Split-Path -Parent $PSScriptRoot
$failures = @()
foreach ($entry in @('AGENTS.md', 'README.md', 'docs/work.md')) {
    if (-not (Test-Path -LiteralPath (Join-Path $repoRoot $entry) -PathType Leaf)) {
        $failures += "Missing entry point: $entry"
    }
}

# The foundation uses inline Markdown links. URI links and heading fragments
# are outside this check; reference-style links are not currently used.
$markdownFiles = Get-ChildItem -LiteralPath $repoRoot -Recurse -File -Filter '*.md' |
    Where-Object { $_.FullName -notmatch '[\\/](\.git|node_modules|\.venv)[\\/]' }
foreach ($file in $markdownFiles) {
    $content = Get-Content -LiteralPath $file.FullName -Raw
    foreach ($match in [regex]::Matches($content, '\[[^\]]*\]\(([^)]+)\)')) {
        $target = $match.Groups[1].Value.Trim().Trim('<', '>')
        if ($target -match '^[a-zA-Z][a-zA-Z0-9+.-]*:' -or $target.StartsWith('#')) { continue }
        $target = [Uri]::UnescapeDataString(($target -split '#', 2)[0])
        if (-not $target) { continue }
        $resolved = Join-Path $file.DirectoryName $target
        if (-not (Test-Path -LiteralPath $resolved)) {
            $failures += "$($file.FullName): missing link target '$target'"
        }
    }
}
if ($failures.Count -gt 0) {
    $failures | ForEach-Object { Write-Output $_ }
    exit 1
}
Write-Output "PASS: entry points and local inline file links in $(@($markdownFiles).Count) Markdown files."
