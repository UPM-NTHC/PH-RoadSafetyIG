ValueSet: SILPHEncounterParticipantRoleVS
Id: a451137e-f7ff-4fb3-af03-e2bae290ea22
Title: "SILPH - Encounter Participant Role (VS)"
Description: "SILPH Value Set for EMS encounter participant roles documented on the run report."
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2025-10-31T00:13:17.034+00:00"
* ^url = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-EncounterParticipantRole"
* ^version = "0.2.0"
* ^status = #draft
* ^publisher = "UP Manila - National Institutes of Health - National Telehealth Center"
* ^contact[0].name = "UP Manila - National Institutes of Health - National Telehealth Center"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://github.com/UPM-NTHC/PH-RoadSafetyIG"
* ^contact[+].name = "PH Road Safety IG Repository"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://github.com/UPM-NTHC/PH-RoadSafetyIG"
* ^jurisdiction = urn:iso:std:iso:3166#PH "Philippines"
* ^expansion.identifier = "urn:uuid:2f7e8bec-1033-4f24-8391-38ea28d95d6c"
* ^expansion.timestamp = "2025-10-31T01:58:21+00:00"
* ^expansion.total = 5
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType|5.0.0"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType|5.0.0"
* ^expansion.parameter[+].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://loinc.org|2.78"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://loinc.org|2.78"
* ^expansion.parameter[+].name = "warning-draft"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-EncounterParticipantRole|0.2.0"
* ^expansion.contains[0].system = "http://loinc.org"
* ^expansion.contains[=].version = "2.78"
* ^expansion.contains[=].code = #90123-1
* ^expansion.contains[=].display = "Response team leader name"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #397897005
* ^expansion.contains[=].display = "Paramedic (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #159738005
* ^expansion.contains[=].display = "Ambulanceman (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #22515006
* ^expansion.contains[=].display = "Medical assistant (occupation)"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* ^expansion.contains[=].version = "5.0.0"
* ^expansion.contains[=].code = #RCV
* ^expansion.contains[=].display = "receiver"
* LOINC#90123-1 "Response team leader name"
* SNOMED_CT#397897005 "Paramedic (occupation)"
* SNOMED_CT#159738005 "Ambulanceman (occupation)"
* SNOMED_CT#22515006 "Medical assistant (occupation)"
* $v3-ParticipationType#RCV "receiver"