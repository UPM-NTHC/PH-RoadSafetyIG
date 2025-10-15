Profile: RSAllergyIntolerance
Parent: AllergyIntolerance
Id: rs-allergy-intolerance
Title: "Road Safety AllergyIntolerance"
Description: "Known allergies, substances and reactions."
* ^version = "1.0.0"
* code 0..1 MS
* code from http://hl7.org/fhir/ValueSet/allergyintolerance-code (preferred)
* patient 1..1 MS
* patient only Reference(RSPatient)