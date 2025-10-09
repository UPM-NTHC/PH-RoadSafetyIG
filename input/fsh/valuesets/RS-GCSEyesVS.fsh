ValueSet: RSGCSEyesVS
Id: RS-GCSEyes-VS
Title: "RS GCS Eyes"
Description: "GCS Eye opening (LOINC answers)."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-GCSEyes"

* include $LNC#LA6556-0 "Eyes open spontaneously"
* include $LNC#LA6555-2 "Eye opening to verbal command"
* include $LNC#LA6554-5 "Eye opening to pain"
* include $LNC#LA6553-7 "No eye opening"