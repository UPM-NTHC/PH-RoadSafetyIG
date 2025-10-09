ValueSet: RSRespiratoryRhythmVS
Id: RS-RespiratoryRhythm-VS
Title: "RS Respiratory Rhythm"
Description: "Respiratory rhythm findings using SNOMED CT."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-RespiratoryRhythm"

* include $SCT#5467003 "Normal respiratory rhythm (finding)"
* include $SCT#248585001 "Irregular breathing (finding)"
* include $SCT#248549001 "Labored breathing (finding)"