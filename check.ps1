# check.ps1
# Publication hygiene check for P1 (CAE)
# Flags terms that indicate scope or ontological drift

$Root = "paper01"
$Files = Get-ChildItem $Root -Recurse -Include *.tex

$ForbiddenGroups = @{
    "Category theory (P2 territory)"               = @(
        "morphism",
        "functor",
        "natural transformation",
        "composition",
        "bicategory",
        "2-morphism"
    )
    "Exchange semantics (P2 territory)"            = @(
        "exchange pattern",
        "admissibility",
        "canonicalization",
        "normalization"
    )
    "Explanation semantics (P3 territory)"         = @(
        "explanation",
        "explanatory",
        "vertical domain",
        "fibered",
        "CTag",
        "spine"
    )
    "Causal or normative language (ontology risk)" = @(
        "causes",
        "leads to",
        "results in",
        "determines",
        "effective",
        "efficient"
    )
}

Write-Host "`n=== P1 Ontology Drift Scan ===`n"

foreach ($group in $ForbiddenGroups.Keys) {
    Write-Host ">> $group"
    foreach ($term in $ForbiddenGroups[$group]) {
        foreach ($file in $Files) {
            $searchResults = Select-String -Path $file.FullName -Pattern "\b$term\b" -CaseSensitive:$false
            foreach ($m in $searchResults) {
                Write-Host "  $($file.Name):$($m.LineNumber)  '$term'"
            }
        }
    }
    Write-Host ""
}

Write-Host "Scan complete.`n"
