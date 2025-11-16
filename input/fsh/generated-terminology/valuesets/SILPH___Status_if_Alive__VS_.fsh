ValueSet: SILPH___Status_if_Alive__VS_
Id: SILPH-StatusifAliveVS
Title: "SILPH - Status if Alive (VS)"
Description: "SILPH Value Set for Patient Status, if patient is alive, specify if conscious or unconscious"
* ^meta.versionId = "5"
* ^meta.lastUpdated = "2025-10-30T00:34:07.788+00:00"
* ^url = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-StatusifAlive"
* ^version = "1"
* ^status = #draft
* ^contact.telecom.system = #email
* ^expansion.identifier = "urn:uuid:cff7d924-76c7-42e8-8bd7-062a07effcdf"
* ^expansion.timestamp = "2025-10-29T23:49:30+00:00"
* ^expansion.total = 2
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "warning-draft"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-StatusifAlive|1"
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #271591004
* ^expansion.contains[=].display = "Conscious"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #418107008
* ^expansion.contains[=].display = "Unconscious"
* $SCT#271591004 "Conscious"
* $SCT#418107008 "Unconscious"