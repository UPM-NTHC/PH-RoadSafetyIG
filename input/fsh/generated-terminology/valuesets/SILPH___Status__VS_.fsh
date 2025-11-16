ValueSet: SILPH___Status__VS_
Id: SILPH-StatusVS
Title: "SILPH - Status (VS)"
Description: "SILPH ValueSet for Patient Status, if Alive or Dead during Admission"
* ^meta.versionId = "5"
* ^meta.lastUpdated = "2025-10-30T00:34:07.622+00:00"
* ^url = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Status"
* ^version = "1"
* ^status = #draft
* ^contact.telecom.system = #email
* ^expansion.identifier = "urn:uuid:8ff24ead-5d64-4125-9a07-123667fc7522"
* ^expansion.timestamp = "2025-10-29T23:49:31+00:00"
* ^expansion.total = 2
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "warning-draft"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Status|1"
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #63238001
* ^expansion.contains[=].display = "Dead on Arrival"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #438949009
* ^expansion.contains[=].display = "Alive"
* $SCT#63238001 "Dead on Arrival"
* $SCT#438949009 "Alive"