ValueSet: RSPulseQualityVS
Id: RS-PulseQuality-VS
Title: "RS Pulse Quality"
Description: "Pulse quality using SNOMED CT."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-PulseQuality"

* include http://snomed.info/sct#12146004  "Normal pulse (finding)"
* include http://snomed.info/sct#64661000  "Thready pulse (finding)"
* include http://snomed.info/sct#271640005 "Bounding pulse (finding)"