ValueSet: SILPH___Mode_of_Transport__VS_
Id: SILPH-ModeofTransportVS
Title: "SILPH - Mode of Transport (VS)"
Description: "SILPH Value Set for Mode of Transport of Patient to Healthcare Facility"
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2025-10-30T00:34:05.224+00:00"
* ^url = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ModeofTransport"
* ^version = "1"
* ^status = #draft
* ^contact.telecom.system = #email
* ^expansion.identifier = "urn:uuid:5ca91754-ed69-430f-95c0-b9eb36b1b8b1"
* ^expansion.timestamp = "2025-10-29T23:49:32+00:00"
* ^expansion.total = 4
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://loinc.org|2.78"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://loinc.org|2.78"
* ^expansion.parameter[+].name = "warning-draft"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ModeofTransport|1"
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #49122002
* ^expansion.contains[=].display = "Ambulance"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #74964007
* ^expansion.contains[=].display = "Others"
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "2.78"
* ^expansion.contains[=].code = #LA9321-6
* ^expansion.contains[=].display = "Police vehicle"
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "2.78"
* ^expansion.contains[=].code = #LA9319-0
* ^expansion.contains[=].display = "Private vehicle"
* $SCT#49122002 "Ambulance"
* $SCT#74964007 "Others"
* $LNC#LA9321-6 "Police vehicle"
* $LNC#LA9319-0 "Private vehicle"