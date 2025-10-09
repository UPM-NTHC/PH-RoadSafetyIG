ValueSet: OutcomeVS
Id: outcome-vs
Title: "Outcome ValueSet"
Description: "Outcome at release/discharge using SNOMED CT codes (prioritized)."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-Outcome"

// Explicit SNOMED CT members
* include http://snomed.info/sct#18632008 "Patient status determination, deceased (finding)"
* include http://snomed.info/sct#268910001 "Patient's condition improved (finding)"
// Note: If an explicit SNOMED code for "Unimproved" is adopted, add here in a future revision