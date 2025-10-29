ValueSet: SILPH___Outcome__VS_
Id: SILPH-OutcomeVS
Title: "SILPH - Outcome (VS)"
Description: "SILPH Value Set for Outcome"
* ^meta.versionId = "3"
* ^meta.lastUpdated = "2025-10-29T07:15:27.653+00:00"
* ^url = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Outcome"
* ^version = "0.1.2"
* ^status = #draft
* ^contact.telecom.system = #email
* ^expansion.identifier = "urn:uuid:5a6130a4-4b25-47fc-a808-1954ec17a405"
* ^expansion.timestamp = "2025-10-29T07:15:32+00:00"
* ^expansion.total = 3
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/CodeSystem|0.2.0"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/CodeSystem|0.2.0"
* ^expansion.parameter[+].name = "displayLanguage"
* ^expansion.parameter[=].valueCode = #en-US,en;q=0.9
* ^expansion.parameter[+].name = "warning-draft"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/CodeSystem|0.2.0"
* ^expansion.parameter[+].name = "warning-draft"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Outcome|0.1.2"
* ^expansion.parameter[+].name = "includeDesignations"
* ^expansion.parameter[=].valueBoolean = false
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #268910001
* ^expansion.contains[=].display = "Patient's condition improved"
* ^expansion.contains[+].system = "http://www.roadsafetyph.doh.gov.ph/CodeSystem"
* ^expansion.contains[=].version = "0.2.0"
* ^expansion.contains[=].code = #UNIMPROVED
* ^expansion.contains[=].display = "Unimproved"
* ^expansion.contains[+].system = "http://www.roadsafetyph.doh.gov.ph/CodeSystem"
* ^expansion.contains[=].version = "0.2.0"
* ^expansion.contains[=].code = #DIED
* ^expansion.contains[=].display = "Died"
* SNOMED_CT#268910001 "Improved"
* SILPH_Road_Safety_Local_Codes#UNIMPROVED "Unimproved"
* SILPH_Road_Safety_Local_Codes#DIED "Died"