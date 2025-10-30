ValueSet: SILPH___Injury_Intent__VS_
Id: SILPH-InjuryIntentVS
Title: "SILPH - Injury Intent (VS)"
Description: "SILPH Value Set for Injury Intent"
* ^meta.versionId = "7"
* ^meta.lastUpdated = "2025-10-29T07:10:16.393+00:00"
* ^url = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-InjuryIntent"
* ^version = "0.1.2"
* ^status = #draft
* ^contact.telecom.system = #email
* ^expansion.identifier = "urn:uuid:54f8643e-b540-4f63-83a8-a542fd3d1482"
* ^expansion.timestamp = "2025-10-29T07:10:21+00:00"
* ^expansion.total = 5
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
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-InjuryIntent|0.1.2"
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
* ^expansion.contains[=].version = "0.2.0"
* ^expansion.contains[=].code = #VAWC
* ^expansion.contains[=].display = "VAWC Patient"
* SNOMED_CT#242056005 "Unintentional/Accidental"
* SNOMED_CT#361269008 "Intentional(violence)"
* SNOMED_CT#276853009 "Intentional(self-inflicted)"
* SNOMED_CT#269735005 "Undetermined"
* SILPH_Road_Safety_Local_Codes#VAWC "VAWC Patient"