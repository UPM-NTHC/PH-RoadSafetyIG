ValueSet: RSConditionOfPatientVS
Id: RS-ConditionOfPatient-VS
Title: "RS Condition of Patient"
Description: "Overall condition assertion (Alive/Deceased) using SNOMED CT."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-ConditionOfPatient"

* include http://snomed.info/sct#438949009 "Alive (finding)"
* include http://snomed.info/sct#18632008 "Patient status determination, deceased (finding)"