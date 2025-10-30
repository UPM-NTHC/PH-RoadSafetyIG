ValueSet: SILPH___Type_of_Patient__VS_
Id: SILPH-TypeofPatientVS
Title: "SILPH - Type of Patient (VS)"
Description: "SILPH Value Set for Type of Patient Encounter"
* ^meta.versionId = "9"
* ^meta.lastUpdated = "2025-10-30T00:34:08.431+00:00"
* ^url = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TypeofPatient"
* ^version = "0.1.2"
* ^status = #draft
* ^contact.telecom.system = #email
* ^expansion.identifier = "urn:uuid:c50f9ffb-1b0a-4662-8ace-2c58d2ce232a"
* ^expansion.timestamp = "2025-10-29T23:49:35+00:00"
* ^expansion.total = 5
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/CodeSystem|0.2.0"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/CodeSystem|0.2.0"
* ^expansion.parameter[+].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://loinc.org|2.78"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://loinc.org|2.78"
* ^expansion.parameter[+].name = "warning-draft"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/CodeSystem|0.2.0"
* ^expansion.parameter[+].name = "warning-draft"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TypeofPatient|0.1.2"
* ^expansion.contains[0].system = "http://loinc.org"
* ^expansion.contains[=].version = "2.78"
* ^expansion.contains[=].code = #LA10268-3
* ^expansion.contains[=].display = "ER"
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "2.78"
* ^expansion.contains[=].code = #LA21424-9
* ^expansion.contains[=].display = "OPD"
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "2.78"
* ^expansion.contains[=].code = #LA21427-2
* ^expansion.contains[=].display = "Inpatient"
* ^expansion.contains[+].system = "http://www.roadsafetyph.doh.gov.ph/CodeSystem"
* ^expansion.contains[=].version = "0.2.0"
* ^expansion.contains[=].code = #BHS
* ^expansion.contains[=].display = "BHS"
* ^expansion.contains[+].system = "http://www.roadsafetyph.doh.gov.ph/CodeSystem"
* ^expansion.contains[=].version = "0.2.0"
* ^expansion.contains[=].code = #RHU
* ^expansion.contains[=].display = "RHU"
* LOINC#LA10268-3 "ER"
* LOINC#LA21424-9 "OPD"
* LOINC#LA21427-2 "Inpatient"
* SILPH_Road_Safety_Local_Codes#BHS "BHS"
* SILPH_Road_Safety_Local_Codes#RHU "RHU"