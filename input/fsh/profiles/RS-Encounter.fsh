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
* class from SILPH-TypeofPatientVS (extensible)
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
* participant.type from SILPHEncounterParticipantRoleVS (extensible)
* hospitalization.dischargeDisposition 0..1 MS
* hospitalization.destination 0..1 MS
* obeys RSEncounterDischarge

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
* identifier[hospitalCaseNo].type.coding = $SCT#722248002 "Patient hospital visit number (observable entity)"

/* Originating hospital/practitioner */
* hospitalization.origin 0..1 MS
* hospitalization.origin only Reference(RSOrganization)
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "type"
* participant ^slicing.rules = #open
* participant contains receivedBy 0..1 MS and teamLeader 0..* and treatmentOfficer 0..* and transportOfficer 0..* and assistant 0..*

* participant[receivedBy].individual 0..1 MS
* participant[receivedBy].individual only Reference(PHCorePractitioner)
* participant[receivedBy].type = $ParticipationType#REF "Received by" // for discussion with Terminology team

* participant[teamLeader].individual 0..1 MS
* participant[teamLeader].individual only Reference(PHCorePractitioner)
* participant[teamLeader].type = $LNC#90123-1 "Response team leader name" // Run Report Form ID 37

* participant[treatmentOfficer].individual 0..1 MS
* participant[treatmentOfficer].individual only Reference(PHCorePractitioner)
* participant[treatmentOfficer].type = $SCT#397897005 "Paramedic (occupation)" // Run Report Form ID 38

* participant[transportOfficer].individual 0..1 MS
* participant[transportOfficer].individual only Reference(PHCorePractitioner)
* participant[transportOfficer].type = $SCT#159738005 "Ambulanceman (occupation)" // Run Report Form ID 39

* participant[assistant].individual 0..1 MS
* participant[assistant].individual only Reference(PHCorePractitioner)
* participant[assistant].type = $SCT#22515006 "Medical assistant (occupation)" // Run Report Form ID 4

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains RSEncounterVehicleUsed named vehicleUsed 0..*
* extension[vehicleUsed] ^short = "Identifier and type of transport vehicle."
* extension[vehicleUsed] ^definition = "Identifier and type of transport vehicle. Multiple entries support transfers across different vehicles."
* extension[vehicleUsed] ^comment = "Non-medical concept captured via CodeableConcept.text; Device-based fleet tracking can follow when EMS tooling allows."

Invariant: RSEncounterDischarge
Description: "Inpatient encounters use in-patient discharge dispositions; ER/OPD/BHS/RHU encounters use the ambulatory disposition list."
Expression: "((class.system = 'http://snomed.info/sct' and class.code = '416800000') implies (hospitalization.dischargeDisposition.empty() or hospitalization.dischargeDisposition.memberOf('https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-disposition-ip'))) and (((class.system = 'http://snomed.info/sct' and class.code = '373864002') or (class.system = 'https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/cs-silph' and (class.code = 'BHS' or class.code = 'RHU'))) implies (hospitalization.dischargeDisposition.empty() or hospitalization.dischargeDisposition.memberOf('https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-disposition-er')))"
Severity: #error

Extension: RSEncounterVehicleUsed
Id: rs-encounter-vehicle-used
Title: "RS Encounter Vehicle Used"
Description: "Identifier and type of transport vehicle used during an encounter."
Context: RSEncounter
* valueCodeableConcept 1..1
* valueCodeableConcept ^short = "Identifier and type of transport vehicle."
* valueCodeableConcept ^definition = "Identifier and type of transport vehicle used during the encounter."
* valueCodeableConcept.text 1..1
* valueCodeableConcept.text ^short = "Free-text or coded descriptor for the vehicle used."
* valueCodeableConcept.text ^comment = "Capture free text for current workflows; coded entries may be introduced when terminology support is available."
