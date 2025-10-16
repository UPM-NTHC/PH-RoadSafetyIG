Profile: RSMedicationStatement
Parent: MedicationStatement
Id: rs-medication-statement
Title: "Road Safety MedicationStatement"
Description: "Current medications as codeable concepts or references where available."
* ^version = "1.0.0"
* ^short = "Medication statement"
* ^definition = "Record of current medications for the patient as concepts or references."
* ^comment = "Used to capture medication information relevant to road safety clinical context."
* medication[x] 1..1 MS
* medication[x] ^short = "Medication"
* subject 1..1 MS
* subject only Reference(RSPatient)
* effective[x] 0..1
