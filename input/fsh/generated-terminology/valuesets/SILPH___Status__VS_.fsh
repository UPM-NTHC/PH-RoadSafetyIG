ValueSet: SILPH___Status__VS_
Id: SILPH-StatusVS
Title: "SILPH - Status (VS)"
Description: "SILPH ValueSet for Patient Status, if Alive or Dead during Admission"
* ^meta.versionId = "3"
* ^meta.lastUpdated = "2025-10-27T08:30:31.742+00:00"
* ^url = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Status"
* ^version = "1"
* ^status = #draft
* ^contact.telecom.system = #email
* ^expansion.identifier = "urn:uuid:e6be3982-2aa7-4dc6-be22-1b0a559faaaa"
* ^expansion.timestamp = "2025-10-27T08:30:50+00:00"
* ^expansion.total = 2
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "displayLanguage"
* ^expansion.parameter[=].valueCode = #en-US,en;q=0.9
* ^expansion.parameter[+].name = "warning-draft"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Status|1"
* ^expansion.parameter[+].name = "includeDesignations"
* ^expansion.parameter[=].valueBoolean = false
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #63238001
* ^expansion.contains[=].display = "Dead on arrival at hospital"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #438949009
* ^expansion.contains[=].display = "Alive"
* SNOMED_CT#63238001 "Dead on Arrival"
* SNOMED_CT#438949009 "Alive"