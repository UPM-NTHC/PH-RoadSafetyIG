ValueSet: SILPH___Activity__VS_
Id: SILPH-ActivityVS
Title: "SILPH - Activity (VS)"
Description: "SILPH Value Set for Patient Activity at the Time of Injury/Accident"
* ^meta.versionId = "3"
* ^meta.lastUpdated = "2025-10-29T07:14:53.269+00:00"
* ^url = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Activity"
* ^version = "0.1.2"
* ^status = #draft
* ^contact.telecom.system = #email
* ^expansion.identifier = "urn:uuid:eeaac4e7-5570-4bd0-8885-e89f3c8fa336"
* ^expansion.timestamp = "2025-10-29T07:15:05+00:00"
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
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Activity|0.1.2"
* ^expansion.parameter[+].name = "includeDesignations"
* ^expansion.parameter[=].valueBoolean = false
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #443786003
* ^expansion.contains[=].display = "Injury while engaged in sports activity"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #17542004
* ^expansion.contains[=].display = "Accident while engaged in work-related activity"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #74964007
* ^expansion.contains[=].display = "Other"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #261665006
* ^expansion.contains[=].display = "Unknown"
* ^expansion.contains[+].system = "http://www.roadsafetyph.doh.gov.ph/CodeSystem"
* ^expansion.contains[=].version = "0.2.0"
* ^expansion.contains[=].code = #LEISURE
* ^expansion.contains[=].display = "Leisure"
* SNOMED_CT#443786003 "Sports"
* SNOMED_CT#17542004 "Work related"
* SNOMED_CT#74964007 "Others"
* SNOMED_CT#261665006 "Unknown"
* SILPH_Road_Safety_Local_Codes#LEISURE "Leisure"