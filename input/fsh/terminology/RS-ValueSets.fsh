// Legacy ValueSets retained until JSON resources are supplied.

// ---------------- PSGC (admin areas) — maintained by SysAd ----------------
// These are shells that include the PSGC CodeSystem; expansions are managed externally.
ValueSet: VSPSGCBarangay
Id: vs-psgc-barangay
Title: "RS VS - PSGC Barangay"
Description: "PSGC Barangay codes (managed externally)."
* ^status = #draft
* include codes from system $PSGC

ValueSet: VSPSGCCityMunicipality
Id: vs-psgc-city
Title: "RS VS - PSGC City/Municipality"
Description: "PSGC City/Municipality codes (managed externally)."
* ^status = #draft
* include codes from system $PSGC

ValueSet: VSPSGCProvince
Id: vs-psgc-province
Title: "RS VS - PSGC Province"
Description: "PSGC Province codes (managed externally)."
* ^status = #draft
* include codes from system $PSGC

ValueSet: VSPSGCRegion
Id: vs-psgc-region
Title: "RS VS - PSGC Region"
Description: "PSGC Region codes (managed externally)."
* ^status = #draft
* include codes from system $PSGC

// Fracture injury classification — supports Observation.valueCodeableConcept bindings.
ValueSet: SILPHFractureTypeVS
Id: SILPH-FractureTypeVS
Title: "SILPH - Fracture Type (VS)"
Description: "SILPH Value Set for fracture type designation (open versus closed)."
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2025-10-28T14:11:15.918+00:00"
* ^url = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-FractureType"
* ^version = "1"
* ^status = #draft
* ^contact.telecom.system = #email
* $SCT#423125000 "Closed fracture of bone (disorder)"
* $SCT#397181002 "Open fracture (disorder)"
* ^expansion.identifier = "urn:uuid:9e0e5b4e-56af-4574-8ff7-15be6f42406b"
* ^expansion.timestamp = "2025-10-28T14:11:20.612+00:00"
* ^expansion.total = 2
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "displayLanguage"
* ^expansion.parameter[=].valueCode = #en-US,en;q=0.9
* ^expansion.parameter[+].name = "warning-draft"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-FractureType|1"
* ^expansion.parameter[+].name = "includeDesignations"
* ^expansion.parameter[=].valueBoolean = false
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #423125000
* ^expansion.contains[=].display = "Closed fracture of bone (disorder)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #397181002
* ^expansion.contains[=].display = "Open fracture (disorder)"
