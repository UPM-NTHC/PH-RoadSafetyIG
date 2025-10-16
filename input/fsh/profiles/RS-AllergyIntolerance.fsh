Profile: RSAllergyIntolerance
Parent: AllergyIntolerance
Id: rs-allergy-intolerance
Title: "Road Safety AllergyIntolerance"
Description: "Known allergies, substances and reactions."
* ^version = "1.0.0"
* ^short = "Known allergies"
* ^definition = "Recorded allergies, implicated substances and observed reactions documented for the patient."
* ^comment = "Represents known patient allergies captured for road safety use."

* code 0..1 MS
* code ^short = "Allergy / intolerance concept"
* code ^definition = "Concept identifying a known allergy or intolerance (substance or agent) documented for the patient."
* code ^comment = "Targets AllergyIntolerance.code per ConceptMap."
* code from http://hl7.org/fhir/ValueSet/allergyintolerance-code (preferred)

* patient 1..1 MS
* patient ^short = "Subject (patient)"
* patient ^definition = "Reference to the patient who is the subject of this allergy/intolerance record."
* patient ^comment = "Reference constrained to the Road Safety Patient profile (`RSPatient`)."
* patient only Reference(RSPatient)