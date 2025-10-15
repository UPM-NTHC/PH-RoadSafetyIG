Profile: RSEncounter
Parent: PHCoreEncounter
Id: rs-encounter
Title: "Road Safety Encounter"
Description: "Encounter for EMS run report / facility submission context. Captures incident number, type, timing, participants, disposition & transfer."
* ^version = "1.0.0"
* status 1..1 MS
* class 1..1 MS
* identifier 1..* MS
* period.start 1..1 MS
* serviceProvider 0..1 MS
* serviceProvider only Reference(RSOrganization)
* participant 0..* MS
* hospitalization.dischargeDisposition 0..1 MS
* hospitalization.destination 0..1 MS