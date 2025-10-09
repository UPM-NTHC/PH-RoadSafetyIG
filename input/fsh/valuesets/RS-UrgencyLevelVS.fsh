ValueSet: RSUrgencyLevelVS
Id: RS-UrgencyLevel-VS
Title: "RS Urgency Level (example)"
Description: "System-generated urgency/priority level. Temporary local codes pending mapping."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-UrgencyLevel"

* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-UrgencyLevel#immediate "Immediate"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-UrgencyLevel#urgent "Urgent"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-UrgencyLevel#routine "Routine"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-UrgencyLevel#low "Low"