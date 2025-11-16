ValueSet: SILPH___Transport_Accident__Collision_or_Noncollision__VS_
Id: SILPH-TransportAccidentCollisionorNoncollisionVS
Title: "SILPH - Transport Accident: Collision or Noncollision (VS)"
Description: "SILPH Value Set for Transport Accident if Collision or Noncollision"
* ^meta.versionId = "6"
* ^meta.lastUpdated = "2025-10-30T00:34:07.958+00:00"
* ^url = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TransportAccidentCollision"
* ^version = "0.1.2"
* ^status = #draft
* ^contact.telecom.system = #email
* ^expansion.identifier = "urn:uuid:d22313cd-72f5-4387-aa6d-06dc1a5300d4"
* ^expansion.timestamp = "2025-10-29T23:49:36+00:00"
* ^expansion.total = 2
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
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TransportAccidentCollision|0.1.2"
* ^expansion.contains[0].system = "http://loinc.org"
* ^expansion.contains[=].version = "2.78"
* ^expansion.contains[=].code = #LA7319-2
* ^expansion.contains[=].display = "Collision"
* ^expansion.contains[+].system = "http://www.roadsafetyph.doh.gov.ph/CodeSystem"
* ^expansion.contains[=].version = "0.2.0"
* ^expansion.contains[=].code = #NONCOLLISION
* ^expansion.contains[=].display = "Non-Collision"
* $LNC#LA7319-2 "Collision"
* SILPH_Road_Safety_Local_Codes#NONCOLLISION "Non-Collision"