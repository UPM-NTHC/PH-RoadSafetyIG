ValueSet: RSPatientPositionVS
Id: RS-PatientPosition-VS
Title: "RS Patient Position"
Description: "Position/role of the patient at time of incident. Temporary local codes."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-PatientPosition"

* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-PatientPosition#driver "Driver"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-PatientPosition#front-passenger "Front passenger"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-PatientPosition#rear-left "Rear left"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-PatientPosition#rear-right "Rear right"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-PatientPosition#rear-middle "Rear middle"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-PatientPosition#pedestrian "Pedestrian"