ValueSet: RSAVPUVS
Id: RS-AVPU-VS
Title: "RS AVPU Level of Consciousness"
Description: "AVPU scale coded in SNOMED CT."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-AVPU"

* include $SCT#248234008 "Mentally alert (finding)"
* include $SCT#300202002 "Responds to voice (finding)"
* include $SCT#450847001 "Responds to pain (finding)"
* include $SCT#422768004 "Unresponsive (finding)"