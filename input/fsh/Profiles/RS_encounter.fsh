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

* class 1..1 MS
* class ^short = "Type of Patient (inpatient, outpatient, emergency)"
* class.code from http://hl7.org/fhir/ValueSet/encounter-reason (extensible)

* period 1..1 MS
* period.start 1..1 MS
* period.start ^short = "Date and Time of Consultation"

* reasonCode 0..* MS
* reasonCode ^short = "Reason for transport/vehicular accident (land, water, air)"
* reasonCode from http://hl7.org/fhir/ValueSet/encounter-reason  (extensible)

* extension contains VehicleType named vehicleType 0..1 MS

* participant.individual only Reference(PHCorePractitioner)

* hospitalization.origin only Reference(PHCoreOrganization)
* hospitalization.dischargeDisposition 0..1 MS
* hospitalization.dischargeDisposition ^short = "Disposition (discharge, admit, others)"
* hospitalization.dischargeDisposition from http://hl7.org/fhir/ValueSet/encounter-discharge-disposition (extensible)
* hospitalization.destination 0..1
* hospitalization.destination only Reference(PHCoreOrganization)
* hospitalization.destination ^short = "Transferred to another facility/hospital"

* serviceProvider only Reference(PHCoreOrganization)
* partOf only Reference(RSEncounter)

* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "type.coding.code"
* participant ^slicing.rules = #open
* participant contains
    teamLeader 0..1 MS and
    treatmentOfficer 0..1 MS and
    transportOfficer 0..1 MS and
    assistant 0..1 MS and
    receivedBy 0..1 MS 

 // RESP - The person or organization that has primary responsibility for the act. The responsible party is not necessarily present in an action, but is accountable for the action through the power to delegate, and the duty to review actions with the performing actor after the fact. This responsibility may be ethical, legal, contractual, fiscal, or fiduciary in nature.
 //Example: A person who is the head of a biochemical laboratory; a sponsor for a policy or government program.

* participant[teamLeader].type 1..*
* participant[teamLeader].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#RESP "responsible party"
* participant[teamLeader].individual 1..1
* participant[teamLeader].individual only Reference(PHCorePractitioner)
* participant[teamLeader].individual ^short = "Team Leader (Practitioner)"

* participant[treatmentOfficer].type 1..*
* participant[treatmentOfficer].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF "primary performer"
* participant[treatmentOfficer].individual 1..1
* participant[treatmentOfficer].individual only Reference(PHCorePractitioner)
* participant[treatmentOfficer].individual ^short = "Treatment Officer"

 //Only with Transportation services. A person who escorts the patient.
* participant[transportOfficer].type 1..*
* participant[transportOfficer].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#ESC "escort"
* participant[transportOfficer].individual 1..1
* participant[transportOfficer].individual only Reference(PHCorePractitioner)
* participant[transportOfficer].individual ^short = "Transport Officer"

* participant[assistant].type 1..*
* participant[assistant].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF "secondary performer"
* participant[assistant].individual 1..1
* participant[assistant].individual only Reference(PHCorePractitioner)
* participant[assistant].individual ^short = "Assistant"

* participant[receivedBy].type 1..*
* participant[receivedBy].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#RCV "receiver"
* participant[receivedBy].individual 1..1
* participant[receivedBy].individual only Reference(PHCorePractitioner)
* participant[receivedBy].individual ^short = "Received By"
// participant can be change to care team profile 


* class only CodingRS
* type only CodeableConceptRS
* serviceType only CodeableConceptRS
* priority only CodeableConceptRS
* participant.type only CodeableConceptRS
* reasonCode only CodeableConceptRS
* diagnosis.use only CodeableConceptRS
* hospitalization.admitSource only CodeableConceptRS
* hospitalization.reAdmission only CodeableConceptRS
* hospitalization.dischargeDisposition only CodeableConceptRS
* location.physicalType only CodeableConceptRS

// Slicing the Encounter.location array
* location 1..*
* location ^slicing.discriminator.type = #value
* location ^slicing.discriminator.path = "location"
* location ^slicing.rules = #open
* location ^slicing.description = "Slice for incident scene and facilities"

// Scene slice
* location contains scene 1..1
* location[scene].location only Reference(PHCoreLocation)
* location[scene].location ^short = "Incident/accident site"
* location[scene].location ^definition = "The location of the accident scene."
* location[scene].location ^binding.strength = #required
* location[scene].location ^binding.valueSet = "http://hl7.org/fhir/ValueSet/location-physical-type"

// Facility slice
* location contains facility 0..*
* location[facility].location 1..1 MS
* location[facility].location only Reference(PHCoreLocation)
* location[facility].location ^short = "Facilities involved in care"
* location[facility].location ^binding.strength = #extensible
* location[facility].location ^binding.valueSet = "http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType"

/*
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
    RoadNetworkShapeFile named roadNetworkShapeFile 0..1 MS */