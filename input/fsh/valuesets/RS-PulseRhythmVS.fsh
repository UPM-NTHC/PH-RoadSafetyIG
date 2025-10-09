ValueSet: RSPulseRhythmVS
Id: RS-PulseRhythm-VS
Title: "RS Pulse Rhythm"
Description: "Pulse rhythm (regular/irregular) using SNOMED CT."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-PulseRhythm"

* include http://snomed.info/sct#271636001 "Pulse regular (finding)"
* include http://snomed.info/sct#61086009  "Pulse irregular (finding)"