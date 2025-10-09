ValueSet: RSGCSVerbalVS
Id: RS-GCSVerbal-VS
Title: "RS GCS Verbal"
Description: "GCS Verbal response (LOINC answers)."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-GCSVerbal"

* include $LNC#LA6561-0 "Oriented"
* include $LNC#LA6560-2 "Confused"
* include $LNC#LA6559-4 "Inappropriate words"
* include $LNC#LA6558-6 "Incomprehensible sounds"
* include $LNC#LA6557-8 "No verbal response (>2 yrs); no vocal response (<=2 yrs)"