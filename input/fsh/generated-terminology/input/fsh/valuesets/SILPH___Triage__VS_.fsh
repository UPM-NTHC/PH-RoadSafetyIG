ValueSet: SILPH___Triage__VS_
Id: SILPH-TriageVS
Title: "SILPH - Triage (VS)"
Description: "SILPH Value Set for Triage at Scene"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2025-10-27T10:38:10.236+00:00"
* ^url = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Triage"
* ^version = "1"
* ^status = #draft
* ^contact.telecom.system = #email
* ^expansion.identifier = "urn:uuid:4c8a4350-cb21-41e2-a60c-57660c05e609"
* ^expansion.timestamp = "2025-10-27T10:38:14+00:00"
* ^expansion.total = 5
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://loinc.org|2.78"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://loinc.org|2.78"
* ^expansion.parameter[+].name = "displayLanguage"
* ^expansion.parameter[=].valueCode = #en-US,en;q=0.9
* ^expansion.parameter[+].name = "warning-draft"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Triage|1"
* ^expansion.parameter[+].name = "includeDesignations"
* ^expansion.parameter[=].valueBoolean = false
* ^expansion.contains[0].system = "http://loinc.org"
* ^expansion.contains[=].version = "2.78"
* ^expansion.contains[=].code = #LA17696-8
* ^expansion.contains[=].display = "Critical (red)"
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "2.78"
* ^expansion.contains[=].code = #LA17695-0
* ^expansion.contains[=].display = "Emergent (yellow)"
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "2.78"
* ^expansion.contains[=].code = #LA17694-3
* ^expansion.contains[=].display = "Lower acuity (green)"
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "2.78"
* ^expansion.contains[=].code = #LA17697-6
* ^expansion.contains[=].display = "Dead without resuscitation efforts (black)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #261665006
* ^expansion.contains[=].display = "Unknown"
* LOINC#LA17696-8 "Red"
* LOINC#LA17695-0 "Yellow"
* LOINC#LA17694-3 "Green"
* LOINC#LA17697-6 "Black"
* SNOMED_CT#261665006 "Unknown"