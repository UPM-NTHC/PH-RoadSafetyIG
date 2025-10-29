ValueSet: SILPH___Injury_Intent__VS_
Id: SILPH-InjuryIntentVS
Title: "SILPH - Injury Intent (VS)"
Description: "SILPH Value Set for Injury Intent"
* ^meta.versionId = "5"
* ^meta.lastUpdated = "2025-10-27T09:51:26.362+00:00"
* ^url = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-InjuryIntent"
* ^version = "1"
* ^status = #draft
* ^contact.telecom.system = #email
* ^expansion.identifier = "urn:uuid:2742d181-6d13-4fbb-9ff8-40cc5a2b27f4"
* ^expansion.timestamp = "2025-10-27T09:51:31+00:00"
* ^expansion.total = 5
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/CodeSystem|1"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/CodeSystem|1"
* ^expansion.parameter[+].name = "displayLanguage"
* ^expansion.parameter[=].valueCode = #en-US,en;q=0.9
* ^expansion.parameter[+].name = "warning-draft"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-InjuryIntent|1"
* ^expansion.parameter[+].name = "warning-draft"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/CodeSystem|1"
* ^expansion.parameter[+].name = "includeDesignations"
* ^expansion.parameter[=].valueBoolean = false
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #242056005
* ^expansion.contains[=].display = "Accidental injury"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #361269008
* ^expansion.contains[=].display = "Intentional"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #276853009
* ^expansion.contains[=].display = "Self inflicted injury"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #269735005
* ^expansion.contains[=].display = "Injury undetermined whether accidentally or purposely inflicted"
* ^expansion.contains[+].system = "http://www.roadsafetyph.doh.gov.ph/CodeSystem"
* ^expansion.contains[=].version = "1"
* ^expansion.contains[=].code = #VAWC
* ^expansion.contains[=].display = "VAWC Patient"
* SNOMED_CT#242056005 "Unintentional/Accidental"
* SNOMED_CT#361269008 "Intentional(violence)"
* SNOMED_CT#276853009 "Intentional(self-inflicted)"
* SNOMED_CT#269735005 "Undetermined"
* SILPH_Road_Safety_Local_Codes#VAWC "VAWC Patient"