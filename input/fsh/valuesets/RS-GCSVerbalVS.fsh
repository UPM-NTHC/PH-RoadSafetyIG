ValueSet: RSGCSVerbalVS
Id: RS-GCSVerbal-VS
Title: "RS GCS Verbal"
Description: "GCS Verbal response (LOINC answers)."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-GCSVerbal"

* include http://loinc.org#LA6561-0 "Oriented"
* include http://loinc.org#LA6560-2 "Confused"
* include http://loinc.org#LA6559-4 "Inappropriate words"
* include http://loinc.org#LA6558-6 "Incomprehensible sounds"
* include http://loinc.org#LA6557-8 "No verbal response (>2 yrs); no vocal response (<=2 yrs)"