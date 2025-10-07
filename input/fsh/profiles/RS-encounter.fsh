Profile: RSEncounter
Parent: PHCoreEncounter
Id: RS-Encounter
Title: "Road Safety Encounter"
Description: "Encounter profile for road safety reporting (hospital case no, incident no, transport details, disposition, etc.)"

// --------------------
// Identifiers
// --------------------
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier 1..* MS
* identifier ^short = "Hospital Case No. and Incident No."
* identifier contains
    hospitalCaseNo 1..1 MS and
    incidentNo 0..1 MS
* identifier[hospitalCaseNo].system = "http://yourhospital.org/hospital-case-number"
* identifier[hospitalCaseNo].value 1..1
* identifier[hospitalCaseNo] ^short = "Hospital Case No."
* identifier[incidentNo].system = "http://yourhospital.org/incident-number"
* identifier[incidentNo].value 1..1
* identifier[incidentNo] ^short = "Incident No."

// --------------------
// Class / Period
// --------------------
* class 1..1 MS
* class ^short = "Type of Patient (inpatient, outpatient, emergency)"
* period 1..1 MS
* period.start 1..1 MS
* period.start ^short = "Date and Time of Consultation"

// --------------------
// Reason / Hospitalization
// --------------------
* reasonCode 0..* MS
* reasonCode ^short = "Reason for transport/vehicular accident (land, water, air)"

* hospitalization.dischargeDisposition 0..1 MS
* hospitalization.dischargeDisposition ^short = "Disposition (discharge, admit, others)"
* hospitalization.destination 0..1
* hospitalization.destination only Reference(PHCoreOrganization)
* hospitalization.destination ^short = "Transferred to another facility/hospital"

// --------------------
// Service Provider
// --------------------
* serviceProvider 0..1 MS
* serviceProvider only Reference(PHCoreOrganization) //can be any organization responsible for the encounter
* serviceProvider ^short = "Medical Facility"

// --------------------
// Participants
// --------------------
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "type.coding.code"
* participant ^slicing.rules = #open
* participant contains
    teamLeader 0..1 MS and
    treatmentOfficer 0..1 MS and
    transportOfficer 0..1 MS and
    assistant 0..1 MS and
    receivedBy 0..1 MS 

* participant[teamLeader].type 1..*
* participant[teamLeader].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF "primary performer"
* participant[teamLeader].individual 1..1
* participant[teamLeader].individual only Reference(PHCorePractitioner)
* participant[teamLeader].individual ^short = "Team Leader (Practitioner)"

* participant[treatmentOfficer].type 1..*
* participant[treatmentOfficer].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF "primary performer"
* participant[treatmentOfficer].individual 1..1
* participant[treatmentOfficer].individual only Reference(PHCorePractitioner)
* participant[treatmentOfficer].individual ^short = "Treatment Officer"

* participant[transportOfficer].type 1..*
* participant[transportOfficer].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF "primary performer"
* participant[transportOfficer].individual 1..1
* participant[transportOfficer].individual only Reference(PHCorePractitioner)
* participant[transportOfficer].individual ^short = "Transport Officer"

* participant[assistant].type 1..*
* participant[assistant].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF "primary performer"
* participant[assistant].individual 1..1
* participant[assistant].individual only Reference(PHCorePractitioner)
* participant[assistant].individual ^short = "Assistant"

* participant[receivedBy].type 1..*
* participant[receivedBy].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF "primary performer"
* participant[receivedBy].individual 1..1
* participant[receivedBy].individual only Reference(PHCorePractitioner)
* participant[receivedBy].individual ^short = "Received By"

// Scene (incident location) — required

* location 1..* 
* location ^slicing.discriminator.type = #value
* location ^slicing.discriminator.path = "location"
* location ^slicing.rules = #open
* location ^slicing.description = "Slice for incident scene and facilities"
* location contains scene 1..1
* location contains facility 0..*

* location[scene] 1..1 MS
* location[scene].location only Reference(PHCoreLocation)
* location[scene].location ^short = "Incident/accident site"
* location[scene].location ^definition = "The location of the accident scene."
* location[scene].location ^binding.strength = #required
* location[scene].location ^binding.valueSet = "http://hl7.org/fhir/ValueSet/location-physical-type"

* location[facility].location 1..1 MS
* location[facility].location only Reference(PHCoreLocation)
* location[facility].location ^short = "Facilities involved in care"
* location[facility].location ^binding.strength = #extensible
* location[facility].location ^binding.valueSet = "http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType"

// --------------------
// Extensions
// --------------------
* extension contains 
    vehicle-used named VehicleUsed 0..1 and
    CauseOfRoadCrash named causeOfRoadCrash 0..1 MS and
    PartyAtFault named partyAtFault 0..1 MS and
    VehicleCondition named vehicleCondition 0..1 MS and
    TrafficIncidentManagement named trafficIncidentManagement 0..1 MS and
    RoadNetworkShapeFile named roadNetworkShapeFile 0..1 MS