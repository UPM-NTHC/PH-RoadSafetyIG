ValueSet: RSPulseQualityVS
Id: RS-PulseQuality-VS
Title: "RS Pulse Quality"
Description: "Pulse quality using SNOMED CT."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-PulseQuality"

* include $SCT#12146004  "Normal pulse (finding)"
* include $SCT#64661000  "Thready pulse (finding)"
* include $SCT#271640005 "Bounding pulse (finding)"