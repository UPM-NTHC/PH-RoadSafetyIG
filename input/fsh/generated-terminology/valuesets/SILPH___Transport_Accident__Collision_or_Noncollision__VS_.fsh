ValueSet: SILPH___Transport_Accident__Collision_or_Noncollision__VS_
Id: SILPH-TransportAccidentCollisionorNoncollisionVS
Title: "SILPH - Transport Accident: Collision or Noncollision (VS)"
Description: "SILPH Value Set for Transport Accident if Collision or Noncollision"
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2025-10-29T07:11:33.393+00:00"
* ^url = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TransportAccidentCollision"
* ^version = "0.1.2"
* ^status = #draft
* ^contact.telecom.system = #email
* ^expansion.identifier = "urn:uuid:1d0432e4-7720-4ee2-bc4d-e39357faeece"
* ^expansion.timestamp = "2025-10-29T07:11:38+00:00"
* ^expansion.total = 2
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/CodeSystem|0.2.0"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/CodeSystem|0.2.0"
* ^expansion.parameter[+].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://loinc.org|2.78"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://loinc.org|2.78"
* ^expansion.parameter[+].name = "displayLanguage"
* ^expansion.parameter[=].valueCode = #en-US,en;q=0.9
* ^expansion.parameter[+].name = "warning-draft"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/CodeSystem|0.2.0"
* ^expansion.parameter[+].name = "warning-draft"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TransportAccidentCollision|0.1.2"
* ^expansion.parameter[+].name = "includeDesignations"
* ^expansion.parameter[=].valueBoolean = false
* ^expansion.contains[0].system = "http://loinc.org"
* ^expansion.contains[=].version = "2.78"
* ^expansion.contains[=].code = #LA7319-2
* ^expansion.contains[=].display = "Collision"
* ^expansion.contains[+].system = "http://www.roadsafetyph.doh.gov.ph/CodeSystem"
* ^expansion.contains[=].version = "0.2.0"
* ^expansion.contains[=].code = #NONCOLLISION
* ^expansion.contains[=].display = "Non-Collision"
* LOINC#LA7319-2 "Collision"
* SILPH_Road_Safety_Local_Codes#NONCOLLISION "Non-Collision"