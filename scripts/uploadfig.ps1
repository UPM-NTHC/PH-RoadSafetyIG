# Paths to your IG and ph-core package
$roadSafetyIG = "https://upm-nthc.github.io/PH-RoadSafetyIG/package.r4.tgz"
$phCorePackage = "https://build.fhir.org/ig/UP-Manila-SILab/ph-core/package.r4.tgz"

# Target FHIR server
$fhirServer = "https://cdr.fhirlab.net/fhir"

# Output dependency file
$outputDepsFile = "deps.txt"

# Run UploadFIG with ph-core as an additional package
UploadFIG `
 -d "https://cdr.fhirlab.net/fhir" `
 -s "C:\Users\nicco\Downloads\RSpackage.r4.tgz"
 --includeReferencedDependencies
# -s "https://upm-nthc.github.io/PH-RoadSafetyIG/package.r4.tgz" 

# UploadFIG -s output/package.r4.tgz -d https://cdr.fhirlab.net/fhir  --includeReferencedDependencies -odf deps_tx.txt

# --includeReferencedDependencies `
# --ip example.fhir.ph.core
# -odf $outputDepsFile

# -pid example.fhir.ph.roadsafety `
  # -ap $phCorePackage `