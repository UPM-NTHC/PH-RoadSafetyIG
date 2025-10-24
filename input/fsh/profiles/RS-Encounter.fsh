Profile: RSEncounter
Parent: PHCoreEncounter
Id: rs-encounter
Title: "RS Encounter"
Description: "Encounter for EMS run report / facility submission context. Captures incident number, type, timing, participants, disposition & transfer."
* ^version = "1.0.0"
* status 1..1 MS
* status ^short = "Encounter status"
* class 1..1 MS
* class ^short = "Encounter class/type"
* class from VSTypeOfPatient (extensible)
* identifier 1..* MS
* identifier ^short = "Encounter identifiers"
* subject 1..1 MS
* subject ^short = "Patient subject"
* subject ^comment = "Reference constrained to the RS Patient profile (`RSPatient`)."
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
* location ^slicing.discriminator.type = #value
* location ^slicing.discriminator.path = "location"
* location ^slicing.rules = #open
* location ^slicing.ordered = true
* location contains accidentSite 0..1 and facility 0..*

// first slice is the accident site
* location[accidentSite].location 1..1 MS
* location[accidentSite].location only Reference(RSIncidentLocation)

// second slice is the facility (receiving facility, previous facility, etc)
* location[facility].location 1..1 MS
* location[facility].location only Reference(RSServiceLocation)
* location[facility].location.type 0..1

/* Identifier slices for ONEISS */
* identifier ^slicing.discriminator.type = #value
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
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "type"
* participant ^slicing.rules = #open
* participant contains receivedBy 0..1 MS and teamLeader 0..* and treatmentOfficer 0..* and transportOfficer 0..* and assistant 0..*

* participant[receivedBy].individual 0..1 MS
* participant[receivedBy].individual only Reference(PHCorePractitioner)
* participant[receivedBy].type = $ParticipationType#test "Received by" // for discussion with Terminology team

* participant[teamLeader].individual 0..1 MS
* participant[teamLeader].individual only Reference(PHCorePractitioner)
* participant[teamLeader].type = $ParticipationType#test "Team Leader" // for discussion with Terminology team

* participant[treatmentOfficer].individual 0..1 MS
* participant[treatmentOfficer].individual only Reference(PHCorePractitioner)
* participant[treatmentOfficer].type = $ParticipationType#test "Treatment Officer" // for discussion with Terminology team

* participant[transportOfficer].individual 0..1 MS
* participant[transportOfficer].individual only Reference(PHCorePractitioner)
* participant[transportOfficer].type = $ParticipationType#test "Transport Officer" // for discussion with Terminology team

* participant[assistant].individual 0..1 MS
* participant[assistant].individual only Reference(PHCorePractitioner)
* participant[assistant].type = $ParticipationType#test "Assistant" // for discussion with Terminology team