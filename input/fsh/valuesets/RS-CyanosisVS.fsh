ValueSet: RSCyanosisVS
Id: RS-Cyanosis-VS
Title: "RS Cyanosis"
Description: "Cyanosis presence/type (SNOMED CT)."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-Cyanosis"

* include $SCT#260385009 "Negative (qualifier value)"
* include $SCT#95837007  "Central cyanosis (disorder)"
* include $SCT#95442007  "Peripheral cyanosis (finding)"