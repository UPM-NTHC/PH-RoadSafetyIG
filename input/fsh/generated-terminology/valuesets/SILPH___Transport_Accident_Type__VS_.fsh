ValueSet: SILPH___Transport_Accident_Type__VS_
Id: SILPH-TransportAccidentTypeVS
Title: "SILPH - Transport Accident Type (VS)"
Description: "SILPH Value Set for Transport Accident Type (Land, Water or Air)"
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2025-10-29T07:07:33.807+00:00"
* ^url = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TransportAccidentType"
* ^version = "0.1.2"
* ^status = #draft
* ^contact.telecom.system = #email
* ^expansion.identifier = "urn:uuid:9aa79cf8-0ac4-4b4c-a057-df87acd18706"
* ^expansion.timestamp = "2025-10-29T07:07:38+00:00"
* ^expansion.total = 3
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/CodeSystem|0.2.0"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/CodeSystem|0.2.0"
* ^expansion.parameter[+].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "displayLanguage"
* ^expansion.parameter[=].valueCode = #en-US,en;q=0.9
* ^expansion.parameter[+].name = "warning-draft"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/CodeSystem|0.2.0"
* ^expansion.parameter[+].name = "warning-draft"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TransportAccidentType|0.1.2"
* ^expansion.parameter[+].name = "includeDesignations"
* ^expansion.parameter[=].valueBoolean = false
* ^expansion.contains[0].system = "http://www.roadsafetyph.doh.gov.ph/CodeSystem"
* ^expansion.contains[=].version = "0.2.0"
* ^expansion.contains[=].code = #LAND
* ^expansion.contains[=].display = "Land"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #215414001
* ^expansion.contains[=].display = "Water transport accident"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #386679005
* ^expansion.contains[=].display = "Air and space transport accident"
* SILPH_Road_Safety_Local_Codes#LAND "Land"
* SNOMED_CT#215414001 "Water"
* SNOMED_CT#386679005 "Air"