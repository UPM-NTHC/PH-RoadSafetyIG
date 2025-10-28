Profile: RSAllergyIntolerance
Parent: AllergyIntolerance
Id: rs-allergy-intolerance
Title: "RS AllergyIntolerance"
Description: "Known allergies, substances and reactions."
* ^version = "1.0.0"

* code 0..1 MS
* code ^short = "Allergy / intolerance concept"
* code ^comment = "Targets AllergyIntolerance.code per ConceptMap."
* code from http://hl7.org/fhir/ValueSet/allergyintolerance-code (preferred)

* patient 1..1 MS
* patient ^short = "Subject (patient)"
* patient ^comment = "Reference constrained to the RS Patient profile (`RSPatient`)."
* patient only Reference(RSPatient)
* encounter only Reference(RSEncounter)
