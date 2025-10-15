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

/* Identifier slices for ONEISS */
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains incidentNumber 0..1 and hospitalCaseNo 0..1
* identifier[incidentNumber].type 1..1 MS
* identifier[incidentNumber].type.coding 1..1
* identifier[incidentNumber].type.coding.display = "Incident number"
* identifier[hospitalCaseNo].type 1..1 MS
* identifier[hospitalCaseNo].type.coding 1..1
* identifier[hospitalCaseNo].type.coding.display = "Hospital case number"

/* Originating hospital/practitioner */
* hospitalization.origin 0..1 MS
* hospitalization.origin only Reference(RSOrganization)
* participant ^slicing.discriminator.type = #pattern
* participant ^slicing.discriminator.path = "type"
* participant ^slicing.rules = #open
* participant contains receivedBy 0..1 and teamLeader 0..1 and treatmentOfficer 0..1 and transportOfficer 0..1 and assistant 0..*
* participant[receivedBy].individual 0..1 MS
* participant[receivedBy].individual only Reference(PHCorePractitioner)
* participant[teamLeader].individual 0..1 MS
* participant[teamLeader].individual only Reference(PHCorePractitioner)
* participant[treatmentOfficer].individual 0..1 MS
* participant[treatmentOfficer].individual only Reference(PHCorePractitioner)
* participant[transportOfficer].individual 0..1 MS
* participant[transportOfficer].individual only Reference(PHCorePractitioner)
* participant[assistant].individual 0..1 MS
* participant[assistant].individual only Reference(PHCorePractitioner)