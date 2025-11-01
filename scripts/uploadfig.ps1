UploadFIG `
-d "https://tx.fhirlab.net/fhir" `
-s "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/branches/35-add-examples-for-each-profile/package.r4.tgz" `
-ip "example.fhir.ph.core|current" `
-r StructureDefinition `
-r Questionnaire `
-r SearchParameter `
-r StructureMap `
-r Library `
--includeReferencedDependencies
# -ets "https://tx.fhirlab.net/fhir"
#  -reg "https://cdr.fhir.net/fhir/" `
 #  -r StructureDefinition `
 #  -s "https://build.fhir.org/ig/UP-Manila-SILab/ph-core/package.r4.tgz" `

# # Paths to your IG and ph-core package
# $roadSafetyIG = "https://upm-nthc.github.io/PH-RoadSafetyIG/package.r4.tgz"
# $phCorePackage = "https://build.fhir.org/ig/UP-Manila-SILab/ph-core/package.r4.tgz"