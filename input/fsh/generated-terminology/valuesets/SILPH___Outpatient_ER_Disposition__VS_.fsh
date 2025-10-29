ValueSet: SILPH___Outpatient_ER_Disposition__VS_
Id: SILPH-OutpatientERDispositionVS
Title: "SILPH - Outpatient/ER Disposition (VS)"
Description: "SILPH Value Set for Outpatient/ER Visit Disposition"
* ^meta.versionId = "2"
* ^meta.lastUpdated = "2025-10-27T08:03:00.566+00:00"
* ^url = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-OutpatientERDisposition"
* ^version = "1"
* ^status = #draft
* ^contact.telecom.system = #email
* ^expansion.identifier = "urn:uuid:3533b294-986f-4296-bf1c-82570f78c655"
* ^expansion.timestamp = "2025-10-27T08:03:18+00:00"
* ^expansion.total = 7
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "displayLanguage"
* ^expansion.parameter[=].valueCode = #en-US,en;q=0.9
* ^expansion.parameter[+].name = "warning-draft"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-OutpatientERDisposition|1"
* ^expansion.parameter[+].name = "includeDesignations"
* ^expansion.parameter[=].valueBoolean = false
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #32485007
* ^expansion.contains[=].display = "Hospital admission"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #306689006
* ^expansion.contains[=].display = "Discharge to home"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #225928004
* ^expansion.contains[=].display = "Patient self-discharge against medical advice"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #34596002
* ^expansion.contains[=].display = "Patient discharge, elopement"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #19712007
* ^expansion.contains[=].display = "Patient transfer, to another health care facility"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #183960004
* ^expansion.contains[=].display = "Patient refuses hospital admission"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #18632008
* ^expansion.contains[=].display = "Patient status determination, deceased"
* SNOMED_CT#32485007 "Admitted"
* SNOMED_CT#306689006 "Treated and Sent Home"
* SNOMED_CT#225928004 "HAMA"
* SNOMED_CT#34596002 "Absconded"
* SNOMED_CT#19712007 "Transferred to another facility/hospital"
* SNOMED_CT#183960004 "Refused Admission"
* SNOMED_CT#18632008 "Died"