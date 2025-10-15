Profile: RSCondition
Parent: Condition
Id: RS-Condition
Title: "Road Safety Condition"
Description: "Conditions used for medical history, initial impression, ICD-10 nature/external cause, and final diagnosis entries."
* ^version = "1.0.0"
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(RSPatient)
* encounter 0..1 
* encounter only Reference(RSEncounter)
* onset[x] 0..1
* abatement[x] 0..1

Profile: RSMedicationStatement
Parent: MedicationStatement
Id: RS-MedicationStatement
Title: "Road Safety MedicationStatement"
Description: "Current medications as codeable concepts or references where available."
* ^version = "1.0.0"
* medication[x] 1..1 MS
* subject 1..1 MS
* subject only Reference(RSPatient)
* effective[x] 0..1

Profile: RSAllergyIntolerance
Parent: AllergyIntolerance
Id: RS-AllergyIntolerance
Title: "Road Safety AllergyIntolerance"
Description: "Known allergies, substances and reactions."
* ^version = "1.0.0"
* code 0..1 MS
* code from http://hl7.org/fhir/ValueSet/allergyintolerance-code (preferred)
* clinicalStatus from http://terminology.hl7.org/ValueSet/allergyintolerance-clinical (required)
* verificationStatus from http://terminology.hl7.org/ValueSet/allergyintolerance-verification (required)
* patient 1..1 MS
* patient only Reference(RSPatient)
* reaction 0..* 
