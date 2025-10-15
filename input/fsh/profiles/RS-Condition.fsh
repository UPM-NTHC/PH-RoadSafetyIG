Profile: RSCondition
Parent: Condition
Id: rs-condition
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
