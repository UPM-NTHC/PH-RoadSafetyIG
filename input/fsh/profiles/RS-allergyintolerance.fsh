Profile: RSAllergyIntolerance
Parent: AllergyIntolerance
Id: RS-Allergyintolerance
Title: "Road Safety AllergyIntolerance"
Description: "Profile for recording allergy or intolerance information in the Philippine Road Safety IG."

* patient 1..1 MS
* patient only Reference(RSPatient)

// Require allergy code
* code 1..1 MS
* code from http://snomed.info/sct (extensible)

// Require clinical status
* clinicalStatus 1..1 MS
* clinicalStatus from http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical (required)

// Require verification status
* verificationStatus 1..1 MS
* verificationStatus from http://terminology.hl7.org/CodeSystem/allergyintolerance-verification (required)
