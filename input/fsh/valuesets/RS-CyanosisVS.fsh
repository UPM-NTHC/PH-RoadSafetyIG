ValueSet: RSCyanosisVS
Id: RS-Cyanosis-VS
Title: "RS Cyanosis"
Description: "Cyanosis presence/type (SNOMED CT)."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-Cyanosis"

* include http://snomed.info/sct#260385009 "Negative (qualifier value)"
* include http://snomed.info/sct#95837007  "Central cyanosis (disorder)"
* include http://snomed.info/sct#95442007  "Peripheral cyanosis (finding)"