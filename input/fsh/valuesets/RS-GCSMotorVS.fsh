ValueSet: RSGCSMotorVS
Id: RS-GCSMotor-VS
Title: "RS GCS Motor"
Description: "GCS Motor response (LOINC answers)."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-GCSMotor"

* include $LNC#LA6567-7 "Obeys commands"
* include $LNC#LA6566-9 "Localizing pain"
* include $LNC#LA6565-1 "Withdrawal from pain"
* include $LNC#LA6564-4 "Flexion to pain"
* include $LNC#LA6563-6 "Extension to pain"
* include $LNC#LA6562-8 "No motor response"