Profile: RSEncounter
Parent: PHCoreEncounter
Id: rs-encounter
Title: "Road Safety Encounter"
Description: "Encounter for EMS run report / facility submission context. Captures incident number, type, timing, participants, disposition & transfer."
* ^version = "1.0.0"
* ^short = "Encounter for road safety reporting"
* ^definition = "Encounter representing an EMS run report or facility submission context, including identifiers, timing, participants, disposition and transfers."
* ^comment = "Used to record encounter-level context for road safety events."
* status 1..1 MS
* status ^short = "Encounter status"
* class 1..1 MS
* class ^short = "Encounter class/type"
* identifier 1..* MS
* identifier ^short = "Encounter identifiers"
* subject 1..1 MS
* subject ^short = "Patient subject"
* subject ^comment = "Reference constrained to the Road Safety Patient profile (`RSPatient`)."
* subject only Reference(RSPatient)
* period.start 1..1 MS
* period.start ^short = "Encounter start"
* serviceProvider 0..1 MS
* serviceProvider ^short = "Service provider"
* serviceProvider only Reference(RSOrganization)
* participant 0..* MS
* hospitalization.dischargeDisposition 0..1 MS
* hospitalization.destination 0..1 MS

/* Incident and Service Locations (Encounter.location slicing) */
* location ^slicing.discriminator.type = #profile
* location ^slicing.discriminator.path = "location"
* location ^slicing.rules = #open
* location ^slicing.ordered = true
* location contains accidentSite 0..1 and serviceSite 0..*
* location[accidentSite].location 1..1 MS
* location[accidentSite].location only Reference(rs-location-incident)
* location[serviceSite].location 1..1 MS
* location[serviceSite].location only Reference(rs-location-service)

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