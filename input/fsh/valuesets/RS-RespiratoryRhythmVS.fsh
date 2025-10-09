ValueSet: RSRespiratoryRhythmVS
Id: RS-RespiratoryRhythm-VS
Title: "RS Respiratory Rhythm"
Description: "Respiratory rhythm findings using SNOMED CT."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-RespiratoryRhythm"

* include http://snomed.info/sct#5467003 "Normal respiratory rhythm (finding)"
* include http://snomed.info/sct#248585001 "Irregular breathing (finding)"
* include http://snomed.info/sct#248549001 "Labored breathing (finding)"