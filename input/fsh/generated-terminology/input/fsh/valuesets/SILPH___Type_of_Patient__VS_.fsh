ValueSet: SILPH___Type_of_Patient__VS_
Id: SILPH-TypeofPatientVS
Title: "SILPH - Type of Patient (VS)"
Description: "SILPH Value Set for Type of Patient Encounter"
* ^meta.versionId = "5"
* ^meta.lastUpdated = "2025-10-27T09:52:11.009+00:00"
* ^url = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TypeofPatient"
* ^version = "1"
* ^status = #draft
* ^contact.telecom.system = #email
* ^expansion.identifier = "urn:uuid:895e21f5-f1cb-4a0e-b3c3-564fcd970299"
* ^expansion.timestamp = "2025-10-27T09:52:15+00:00"
* ^expansion.total = 5
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/CodeSystem|1"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/CodeSystem|1"
* ^expansion.parameter[+].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://loinc.org|2.78"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://loinc.org|2.78"
* ^expansion.parameter[+].name = "displayLanguage"
* ^expansion.parameter[=].valueCode = #en-US,en;q=0.9
* ^expansion.parameter[+].name = "warning-draft"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TypeofPatient|1"
* ^expansion.parameter[+].name = "warning-draft"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/CodeSystem|1"
* ^expansion.parameter[+].name = "includeDesignations"
* ^expansion.parameter[=].valueBoolean = false
* ^expansion.contains[0].system = "http://loinc.org"
* ^expansion.contains[=].version = "2.78"
* ^expansion.contains[=].code = #LA10268-3
* ^expansion.contains[=].display = "Emergency Department"
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "2.78"
* ^expansion.contains[=].code = #LA21424-9
* ^expansion.contains[=].display = "Ambulatory Visit"
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "2.78"
* ^expansion.contains[=].code = #LA21427-2
* ^expansion.contains[=].display = "Inpatient hospital"
* ^expansion.contains[+].system = "http://www.roadsafetyph.doh.gov.ph/CodeSystem"
* ^expansion.contains[=].version = "1"
* ^expansion.contains[=].code = #BHS
* ^expansion.contains[=].display = "BHS"
* ^expansion.contains[+].system = "http://www.roadsafetyph.doh.gov.ph/CodeSystem"
* ^expansion.contains[=].version = "1"
* ^expansion.contains[=].code = #RHU
* ^expansion.contains[=].display = "RHU"
* LOINC#LA10268-3 "ER"
* LOINC#LA21424-9 "OPD"
* LOINC#LA21427-2 "Inpatient"
* SILPH_Road_Safety_Local_Codes#BHS "BHS"
* SILPH_Road_Safety_Local_Codes#RHU "RHU"