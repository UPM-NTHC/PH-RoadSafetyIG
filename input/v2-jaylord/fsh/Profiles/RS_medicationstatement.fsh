Profile: RSMedicationStatement
Parent: MedicationStatement
Id: RS-MedicationStatement
Title: "Road Safety Medication Statement"
Description: "The current medication being taken"
* ^version = "1.0.0"
* identifier and context and status and category and medication[x] and subject and effective[x] and dosage and dosage.text and dosage.timing and dosage.sequence and dosage.patientInstruction and dosage.route and dosage.doseAndRate.dose[x] and dosage.doseAndRate.rate[x] MS
* dosage.timing.repeat and dosage.timing.repeat.count and dosage.timing.repeat.duration and dosage.timing.repeat.durationUnit and dosage.timing.repeat.frequency and dosage.timing.repeat.period and dosage.timing.repeat.periodUnit and dosage.timing.repeat.dayOfWeek and dosage.timing.repeat.timeOfDay TU
* dosage.timing.code.coding only CodingRS
* dosage.route.coding only CodingRS

* statusReason only CodeableConceptRS
* category only CodeableConceptRS
* medication[x] only CodeableConceptRS or Reference(PHCoreMedication)
* reasonCode only CodeableConceptRS
* medicationReference only Reference(PHCoreMedication)
/* basedOn only Reference(PHCoreServiceRequest)*/
* partOf only Reference(RSMedicationStatement) 
* subject only Reference(RSPatient)
* context only Reference(RSEncounter)
* informationSource only Reference(RSPatient or PHCorePractitioner or  PHCoreRelatedPerson or PHCoreOrganization)
* reasonReference only Reference(RSCondition)

* medicationCodeableConcept 1..1 MS
* medicationCodeableConcept ^short = "The current medication being taken"
* medicationCodeableConcept.text 1..1
* medicationCodeableConcept.text ^short = "Name or description of the current medication"