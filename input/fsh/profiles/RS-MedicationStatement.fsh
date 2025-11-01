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

Instance: rs-example-medication-statement
InstanceOf: RSMedicationStatement
Usage: #example
Title: "Example RS MedicationStatement"
Description: "Active metformin therapy documented for rs-example-patient prior to the incident."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-medication-statement"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Metformin 500 mg tablet taken twice daily by rs-example-patient.</div>"
* status = #active
* subject = Reference(rs-example-patient)
* effectiveDateTime = "2025-10-30"
* medicationCodeableConcept.text = "Metformin 500 mg tablet"
* medicationCodeableConcept.coding = http://www.whocc.no/atc#A10BA02 "metformin"
