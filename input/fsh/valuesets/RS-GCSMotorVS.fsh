ValueSet: RSGCSMotorVS
Id: RS-GCSMotor-VS
Title: "RS GCS Motor"
Description: "GCS Motor response (LOINC answers)."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-GCSMotor"

* include http://loinc.org#LA6567-7 "Obeys commands"
* include http://loinc.org#LA6566-9 "Localizing pain"
* include http://loinc.org#LA6565-1 "Withdrawal from pain"
* include http://loinc.org#LA6564-4 "Flexion to pain"
* include http://loinc.org#LA6563-6 "Extension to pain"
* include http://loinc.org#LA6562-8 "No motor response"