UploadFIG `
-d "https://tx.fhirlab.net/fhir" `
-s "https://build.fhir.org/ig/UP-Manila-SILab/ph-core/package.r4.tgz" `
--includeReferencedDependencies

UploadFIG `
-d "https://cdr.fhirlab.net/fhir" `
-s "https://build.fhir.org/ig/UP-Manila-SILab/ph-core/package.r4.tgz" `
--includeReferencedDependencies


# ---------

# UploadFIG `
# -d "https://tx.fhirlab.net/fhir" `
# -s "https://upm-nthc.github.io/PH-RoadSafetyIG/package.r4.tgz" `
# -ip "example.fhir.ph.core|current" `
# -r StructureDefinition `
# -r SearchParameter `
# -r StructureMap `
# -r Library `
# --includeReferencedDependencies


# -r ValueSet `
# -r CodeSystem `
# -pdv false `
# -r Questionnaire `

# UploadFIG `
# -d "https://cdr.fhirlab.net/fhir" `
# -s "https://upm-nthc.github.io/PH-RoadSafetyIG/package.r4.tgz" `
# -ip "example.fhir.ph.core|current" `
# -r StructureDefinition `
# -r Questionnaire `
# -r SearchParameter `
# -r StructureMap `
# -r Library `
# --includeExamples `
# --includeReferencedDependencies

# ------------

# -pdv false `

# -ets "https://tx.fhirlab.net/fhir"
#  -reg "https://cdr.fhir.net/fhir/" `
 #  -r StructureDefinition `
 #  -s "https://build.fhir.org/ig/UP-Manila-SILab/ph-core/package.r4.tgz" `

# # Paths to your IG and ph-core package
# $roadSafetyIG = "https://upm-nthc.github.io/PH-RoadSafetyIG/package.r4.tgz"
# $phCorePackage = "https://build.fhir.org/ig/UP-Manila-SILab/ph-core/package.r4.tgz"