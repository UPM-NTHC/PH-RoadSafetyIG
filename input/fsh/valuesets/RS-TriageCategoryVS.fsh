ValueSet: RSTriageCategoryVS
Id: RS-TriageCategory-VS
Title: "RS Triage Category (Scene)"
Description: "Triage category values. Temporary local codes pending final mapping to a standard vocabulary."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-TriageCategory"

// Temporary local codes for triage category
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-TriageCategory#red "Red / Immediate"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-TriageCategory#yellow "Yellow / Delayed"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-TriageCategory#green "Green / Minimal"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-TriageCategory#black "Black / Expectant"