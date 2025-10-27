Profile: RSMedicationStatement
Parent: MedicationStatement
Id: rs-medication-statement
Title: "RS MedicationStatement"
Description: "Current medications as codeable concepts or references where available."
* ^version = "1.0.0"
* subject 1..1 MS
* subject only Reference(RSPatient)
* effective[x] 0..1

// * medication[x] 1..1 MS
// * medication[x] ^short = "Medication"

* medicationCodeableConcept 1..1 MS
* medicationCodeableConcept ^short = "The current medication being taken"
* medicationCodeableConcept.text 1..1
* medicationCodeableConcept.text ^short = "Name or description of the current medication"