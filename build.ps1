param(
    [switch]$NoClean
)

# WHY: Automates building all three LaTeX papers (CAE, CEP, CEE)
# OBS: Single entry point for reproducible paper builds
# REQ: Requires latexmk, pdflatex, and bibtex available on PATH
# ACTION: Run this script after editing .tex or .bib files
# Usage:
#   Terminal (Windows PowerShell): .\build.ps1
#   VS Code: Ctrl+Shift+B (requires .vscode/tasks.json)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Write-Info([string]$Message) { Write-Host $Message -ForegroundColor Cyan }
function Write-Ok([string]$Message) { Write-Host $Message -ForegroundColor Green }
function Write-Warn([string]$Message) { Write-Host $Message -ForegroundColor Yellow }
function Write-Fail([string]$Message) { Write-Host $Message -ForegroundColor Red }

function New-Directory([string]$Path) {
    New-Item -ItemType Directory -Force -Path $Path 2>$null | Out-Null
}

function Build-Paper {
    param(
        [Parameter(Mandatory=$true)][string]$PaperDir,
        [Parameter(Mandatory=$true)][string]$TexFile,
        [Parameter(Mandatory=$true)][string]$Name
    )

    Write-Ok ""
    Write-Ok "Building $Name..."
    Push-Location $PaperDir

    New-Directory "build"

    latexmk -pdf -bibtex -interaction=nonstopmode -quiet -auxdir=build -outdir=build $TexFile
    $code = $LASTEXITCODE

    Pop-Location

    if ($code -ne 0) {
        Write-Fail "FAILED: $Name (latexmk exit code $code). See $PaperDir/build/*.log and *.blg"
        return $false
    }

    return $true
}

# === Global Cleanup ===
if (-not $NoClean) {
    Write-Info "Cleaning build artifacts..."
    Get-ChildItem -Recurse -Include *.aux, *.bbl, *.blg, *.fdb_latexmk, *.fls, *.log, *.synctex.gz -ErrorAction SilentlyContinue |
        Remove-Item -Force -ErrorAction SilentlyContinue
}

# === Prepare Shared Bibliography ===
$bibSource = Join-Path $PSScriptRoot "bib_shared.bib"
if (Test-Path $bibSource) {
    foreach ($p in @("paper01", "paper02", "paper03")) {
        $buildDir = Join-Path (Join-Path $PSScriptRoot $p) "build"
        New-Directory $buildDir
        Copy-Item -Path $bibSource -Destination (Join-Path $buildDir "bib_shared.bib") -Force
    }
    Write-Info "Copied bib_shared.bib to all build directories."
} else {
    Write-Warn "WARNING: bib_shared.bib not found at repo root!"
}

# === Build papers ===
$ok1 = Build-Paper -PaperDir "paper01" -TexFile "00P1_cae_ontology.tex" -Name "Paper 01: CAE Ontology"
$ok2 = Build-Paper -PaperDir "paper02" -TexFile "00P2_cep_semantics.tex" -Name "Paper 02: CEP Semantics"
$ok3 = Build-Paper -PaperDir "paper03" -TexFile "00P3_cee_verticals.tex" -Name "Paper 03: CEE Verticals"

$allSuccess = $ok1 -and $ok2 -and $ok3

# === Output Consolidation ===
$papers = @(
    @{ Source = ".\paper01\build\00P1_cae_ontology.pdf"; Dest = ".\00P1_cae_ontology.pdf"; Name = "CAE Ontology" },
    @{ Source = ".\paper02\build\00P2_cep_semantics.pdf"; Dest = ".\00P2_cep_semantics.pdf"; Name = "CEP Semantics" },
    @{ Source = ".\paper03\build\00P3_cee_verticals.pdf"; Dest = ".\00P3_cee_verticals.pdf"; Name = "CEE Verticals" }
)

Write-Info ""
Write-Info "BUILD RESULTS"
foreach ($paper in $papers) {
    if (Test-Path $paper.Source) {
        Copy-Item -Path $paper.Source -Destination $paper.Dest -Force
        Write-Ok "OK:   $($paper.Name)"
    } else {
        Write-Fail "FAIL: $($paper.Name) (PDF not generated)"
    }
}

# === Error Summary ===
$logPaths = @("paper01\build", "paper02\build", "paper03\build")
$logFiles = Get-ChildItem -Recurse -Filter "*.log" -Path $logPaths -ErrorAction SilentlyContinue

$hasErrors = $false
foreach ($log in $logFiles) {
    $errors = Select-String -Path $log.FullName -Pattern "^!" -ErrorAction SilentlyContinue
    if ($errors) {
        if (-not $hasErrors) {
            Write-Fail ""
            Write-Fail "ERRORS FOUND"
            $hasErrors = $true
        }
        Write-Warn ""
        Write-Warn "$($log.Directory.Parent.Name)/$($log.Name):"
        $errors | Select-Object -Unique -First 5 | ForEach-Object { Write-Fail "  $($_.Line)" }
    }
}

if (-not $hasErrors) {
    Write-Ok ""
    Write-Ok "No LaTeX errors found."
}

Write-Info ""
if ($allSuccess) {
    Write-Ok "Build complete - all papers built successfully."
    exit 0
} else {
    Write-Fail "Build complete - one or more papers failed."
    exit 1
}
