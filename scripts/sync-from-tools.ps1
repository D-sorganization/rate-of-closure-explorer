<#
.SYNOPSIS
    Sync this repo's app source from the canonical copy in the Tools repo.

.DESCRIPTION
    The canonical Rate of Closure Impact Explorer lives in the private
    D-sorganization/Tools monorepo at src/rate_of_closure/web, where its
    TypeScript model is pinned test-for-test against the Python
    implementation. This repo is the public, deployable mirror.

    Run after a Tools merge that touches the tool, then commit and push;
    the Pages workflow rebuilds and redeploys automatically.

.EXAMPLE
    ./scripts/sync-from-tools.ps1 -ToolsPath C:\Users\diete\Repositories\Tools
#>
param(
    [Parameter(Mandatory = $true)]
    [string]$ToolsPath
)

$source = Join-Path $ToolsPath "src/rate_of_closure/web"
if (-not (Test-Path (Join-Path $source "package.json"))) {
    throw "Not a rate_of_closure web checkout: $source"
}
$dest = Split-Path $PSScriptRoot -Parent

$tracked = git -C $source ls-files .
foreach ($rel in $tracked) {
    $from = Join-Path $source $rel
    $to = Join-Path $dest $rel
    New-Item -ItemType Directory -Force (Split-Path $to) | Out-Null
    Copy-Item $from $to -Force
}
Write-Output "Synced $($tracked.Count) files from $source"
Write-Output "Review with 'git status', then commit and push to deploy."
