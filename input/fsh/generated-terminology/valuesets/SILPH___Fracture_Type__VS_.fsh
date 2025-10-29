ValueSet: SILPH___Fracture_Type__VS_
Id: SILPH-FractureTypeVS
Title: "SILPH - Fracture Type (VS)"
Description: "SILPH Value Set for fracture type designation (open versus closed)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2025-10-29T01:26:51.434+00:00"
* ^url = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-FractureType"
* ^version = "1"
* ^status = #draft
* ^contact.telecom.system = #email
* ^expansion.identifier = "urn:uuid:c5518392-9254-4ae2-9554-fd3c530265a7"
* ^expansion.timestamp = "2025-10-29T01:26:57+00:00"
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
* ^expansion.contains[=].code = #423125000
* ^expansion.contains[=].display = "Closed fracture"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #397181002
* ^expansion.contains[=].display = "Open fracture"
* SNOMED_CT#423125000 "Closed fracture"
* SNOMED_CT#397181002 "Open fracture"