Profile: RSMedicationStatement
Parent: MedicationStatement
Id: RS-Medicationstatement
Title: "Road Safety MedicationStatement"
Description: "A profile representing a patient's current medication statement for the Philippine health context."

* status 1..1
* status ^short = "The status of the medication statement (active, completed, etc.)"

* medicationCodeableConcept 1..1
* medicationCodeableConcept ^short = "The current medication being taken"
* medicationCodeableConcept.text 1..1
* medicationCodeableConcept.text ^short = "Name or description of the current medication"

* subject 1..1
* subject only Reference(RSPatient)
* subject ^short = "Patient taking the medication"

* effective[x] 0..1
* effective[x] ^short = "The date or period when the medication is/was taken"

* dateAsserted 0..1
* dateAsserted ^short = "When the statement was asserted"

* dosage 0..* 
* dosage ^short = "Details about how the medication is/was taken"
