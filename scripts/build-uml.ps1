# Auto-generated helper script: build-uml.ps1
# Purpose: Cross-platform build wrapper (Windows variant) to generate UML intros and run the IG Publisher.
# Safe to commit. Requires Node 18+ and Java for IG Publisher.
# Behavior:
# - Runs `node scripts/generate-uml-intros.js`
# - Then runs IG Publisher:
#     - If _genonce.bat exists, runs .\_genonce.bat
#     - Else runs: java -jar .\input-cache\publisher\org.hl7.fhir.publisher.jar -ig .
# - Exits non-zero on failure.

param()

$ErrorActionPreference = "Stop"

function Invoke-Checked {
  param(
    [Parameter(Mandatory = $true)]
    [ScriptBlock] $Script,
    [string] $ErrorMessage = "Command failed"
  )
  & $Script
  if ($LASTEXITCODE -ne 0) {
    Write-Error "$ErrorMessage (exit code $LASTEXITCODE)"
    exit $LASTEXITCODE
  }
}

Write-Host "Generating UML intros..." -ForegroundColor Cyan
Invoke-Checked -Script { node .\scripts\generate-uml-intros.js } -ErrorMessage "UML intros generation failed"

# Determine publisher command
if (Test-Path -Path ".\_genonce.bat") {
  Write-Host "Running IG Publisher via _genonce.bat..." -ForegroundColor Cyan
  Invoke-Checked -Script { & .\_genonce.bat } -ErrorMessage "IG Publisher (_genonce.bat) failed"
}
else {
  $jarPath = ".\input-cache\publisher\org.hl7.fhir.publisher.jar"
  if (-not (Test-Path -Path $jarPath)) {
    Write-Error "Publisher JAR not found at $jarPath"
    exit 1
  }
  Write-Host "Running IG Publisher via Java JAR..." -ForegroundColor Cyan
  Invoke-Checked -Script { & java -jar $jarPath -ig . } -ErrorMessage "IG Publisher (JAR) failed"
}

# Copy UML diagrams to output/diagrams
if (Test-Path -Path ".\temp\diagrams") {
  New-Item -ItemType Directory -Force -Path ".\output\diagrams" | Out-Null
  Get-ChildItem ".\temp\diagrams\*.svg" -ErrorAction SilentlyContinue | ForEach-Object {
    Copy-Item $_.FullName -Destination ".\output\diagrams" -Force
  }
}

Write-Host "Build completed successfully." -ForegroundColor Green
exit 0
