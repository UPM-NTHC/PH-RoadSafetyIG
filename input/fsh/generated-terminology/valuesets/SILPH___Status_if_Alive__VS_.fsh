ValueSet: SILPH___Status_if_Alive__VS_
Id: SILPH-StatusifAliveVS
Title: "SILPH - Status if Alive (VS)"
Description: "SILPH Value Set for Patient Status, if patient is alive, specify if conscious or unconscious"
* ^meta.versionId = "3"
* ^meta.lastUpdated = "2025-10-27T08:29:40.757+00:00"
* ^url = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-StatusifAlive"
* ^version = "1"
* ^status = #draft
* ^contact.telecom.system = #email
* ^expansion.identifier = "urn:uuid:74dad3fa-5483-4c64-94ff-d8384a877819"
* ^expansion.timestamp = "2025-10-27T08:29:54+00:00"
* ^expansion.total = 2
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "displayLanguage"
* ^expansion.parameter[=].valueCode = #en-US,en;q=0.9
* ^expansion.parameter[+].name = "warning-draft"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-StatusifAlive|1"
* ^expansion.parameter[+].name = "includeDesignations"
* ^expansion.parameter[=].valueBoolean = false
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #271591004
* ^expansion.contains[=].display = "Fully conscious"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #418107008
* ^expansion.contains[=].display = "Unconscious"
* SNOMED_CT#271591004 "Conscious"
* SNOMED_CT#418107008 "Unconscious"