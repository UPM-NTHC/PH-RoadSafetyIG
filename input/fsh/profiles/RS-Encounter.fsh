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
/*
Warning: Terminology_TX_NoValid_13: The Coding provided 
(http://loinc.org#LA10268-3) was not found in the value set 
'ActEncounterCode' (http://terminology.hl7.org/ValueSet/v3-ActEncounterCode|3.0.0), and a code should come from this 
value set unless it has no suitable code (note that the
validator cannot judge what is suitable).  (error message = 
Unknown code 'http://loinc.org#LA10268-3' for in-memory 
expansion of ValueSet 'http://terminology.hl7.org/ValueSet/v3-ActEncounterCode')
*/
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
* location ^slicing.discriminator.path = "location.resolve().meta.profile[0]"
* location ^slicing.rules = #open
* location ^slicing.ordered = true
* location contains accidentSite 0..1 and facility 0..*

// first slice is the accident site
* location[accidentSite].location 1..1 MS
* location[accidentSite].location.type = http://terminology.hl7.org/CodeSystem/service-type#236 "Accident"
* location[accidentSite].location only Reference(RSIncidentLocation)

// second slice is the facility (receiving facility, previous facility, etc)
* location[facility].location 1..1 MS
* location[facility].location.type = http://terminology.hl7.org/CodeSystem/service-type#335 "Facility"
* location[facility].location only Reference(RSServiceLocation)

/* Identifier slices for ONEISS */
* identifier 1..* MS
* identifier ^short = "Encounter identifiers"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains incidentNumber 0..1 and hospitalCaseNo 0..1
* identifier[incidentNumber].system = "http://doh.incident.system/"
* identifier[hospitalCaseNo].system = "http://doh.hospitalno.system/"

// * identifier[incidentNumber].type 1..1 MS
// * identifier[incidentNumber].type.coding 1..1
// * identifier[incidentNumber].type.coding.display = "Incident number"

// * identifier[hospitalCaseNo].type 1..1 MS
// * identifier[hospitalCaseNo].type.coding 1..1
// * identifier[hospitalCaseNo].type.coding = $SCT#722248002 "Patient hospital visit number (observable entity)"

// IDENTIFIERS SHOULD BE BOUND BY SYSTEM not code

/* Originating hospital/practitioner */
* hospitalization.origin 0..1 MS
* hospitalization.origin only Reference(RSOrganization)
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "type"
* participant ^slicing.rules = #open
* participant contains receivedBy 0..1 MS and teamLeader 0..* and treatmentOfficer 0..* and transportOfficer 0..* and assistant 0..*

* participant[receivedBy].individual 0..1 MS
* participant[receivedBy].individual only Reference(PHCorePractitioner)
* participant[receivedBy].type = $ParticipationType#REF "referrer" // align display with HL7 ParticipationType preferred term

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
Expression: "((class.system = 'http://snomed.info/sct' and class.code = '416800000') implies (hospitalization.dischargeDisposition.empty() or hospitalization.dischargeDisposition.memberOf('http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-InpatientDisposition'))) and (((class.system = 'http://snomed.info/sct' and class.code = '373864002') or (class.system = 'http://www.roadsafetyph.doh.gov.ph/CodeSystem/cs-silph' and (class.code = 'BHS' or class.code = 'RHU'))) implies (hospitalization.dischargeDisposition.empty() or hospitalization.dischargeDisposition.memberOf('http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-OutpatientERDisposition')))"
Severity: #error

Extension: RSEncounterVehicleUsed
Id: rs-encounter-vehicle-used
Title: "RS Encounter Vehicle Used"
Description: "Identifier and type of transport vehicle used during an encounter."
* valueCodeableConcept 1..1
* valueCodeableConcept ^short = "Identifier and type of transport vehicle."
* valueCodeableConcept ^definition = "Identifier and type of transport vehicle used during the encounter."
* valueCodeableConcept.text 1..1
* valueCodeableConcept.text ^short = "Free-text or coded descriptor for the vehicle used."
* valueCodeableConcept.text ^comment = "Capture free text for current workflows; coded entries may be introduced when terminology support is available."

Instance: rs-example-encounter
InstanceOf: RSEncounter
Usage: #example
Title: "Example RS ER Encounter"
Description: "Emergency encounter for rs-example-patient documenting transport from incident scene to DOH Central ER on 2025-10-31."
* meta.profile = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Example RS Encounter for rs-example-patient covering an ER visit on 2025-10-31 following a vehicular incident.</div>"
* status = #finished
* class.system = "http://loinc.org"
* class.code = #LA10268-3
* class.display = "ER"
* identifier[incidentNumber].system = "http://doh.incident.system/"
* identifier[incidentNumber].value = "INC-2025-0007"
* identifier[hospitalCaseNo].system = "http://doh.hospitalno.system/"
* identifier[hospitalCaseNo].value = "HCN-2025-0459"
// * identifier[incidentNumber].system = "http://www.roadsafetyph.doh.gov.ph/identifier/incident"
// * identifier[incidentNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
// * identifier[incidentNumber].type.coding.code = #AN
// * identifier[incidentNumber].value = "INC-2025-0007"
// * identifier[hospitalCaseNo].system = "http://www.roadsafetyph.doh.gov.ph/identifier/hospital-case"
// * identifier[hospitalCaseNo].value = "HCN-2025-0459"
* subject = Reference(rs-example-patient)
* period.start = "2025-10-31T13:45:00+08:00"
* period.end = "2025-10-31T16:30:00+08:00"
* serviceProvider = Reference(rs-organization-single-ex)
* location[accidentSite].location = Reference(rs-example-incident-location)
* location[facility].location = Reference(rs-example-service-location-er)
* participant[receivedBy].individual = Reference(rs-practitioner-receivedby)
* participant[teamLeader].individual = Reference(rs-practitioner-teamlead)
* participant[treatmentOfficer].individual = Reference(rs-practitioner-treatment)
* hospitalization.origin = Reference(rs-organization-single-ex)
* hospitalization.destination = Reference(rs-example-service-location-er)
* hospitalization.dischargeDisposition = http://snomed.info/sct#19712007 "Transferred to another facility/hospital"
* extension[vehicleUsed][0].valueCodeableConcept.text = "Ambulance RS-Unit-02 (Type II van)"
* extension[vehicleUsed][+].valueCodeableConcept.text = "Back-up Ambulance RS-Unit-05 (Type I)"

Instance: rs-example-incident-location
InstanceOf: RSIncidentLocation
Usage: #example
Title: "Example Incident Location"
Description: "Road traffic collision site at EDSA and Ayala Avenue used in rs-example-encounter."
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Collision site along Epifanio de los Santos Avenue near Ayala Avenue, Makati City.</div>"
* type = http://terminology.hl7.org/CodeSystem/service-type#236 "Accident"
* name = "EDSA - Ayala Southbound"
* address.use = #work
* address.line = "Epifanio de los Santos Ave"
* address.district = "Barangay San Lorenzo"
* address.city = "Makati City"
* address.state = "NCR"
* address.postalCode = "1223"
* address.country = "PH"
* position.longitude = 121.0225
* position.latitude = 14.5513

Instance: rs-example-service-location-er
InstanceOf: RSServiceLocation
Usage: #example
Title: "Example Receiving Facility Location"
Description: "Emergency room location for Department of Health - Central Office receiving rs-example-encounter."
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Emergency Room, Department of Health - Central Office.</div>"
* name = "DOH Central ER"
* type = http://terminology.hl7.org/CodeSystem/service-type#335 "Facility"
* address.line = "San Lazaro Compound, Rizal Avenue"
* address.city = "Manila"
* address.state = "NCR"
* address.postalCode = "1003"
* address.country = "PH"

Instance: rs-practitioner-receivedby
InstanceOf: PHCorePractitioner
Usage: #example
Title: "Example Receiving Practitioner"
Description: "Practitioner who received rs-example-patient at the DOH Central ER."
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Dr. Maria Cristina Santos received the patient at the DOH Central ER.</div>"
* name.use = #official
* name.family = "Santos"
* name.given = "Maria Cristina"
* telecom.system = #phone
* telecom.value = "+63-917-555-0101"

Instance: rs-practitioner-teamlead
InstanceOf: PHCorePractitioner
Usage: #example
Title: "Example EMS Team Leader"
Description: "Response team leader overseeing transport in rs-example-encounter."
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>EMS Team Leader: Paramedic Joel Rivera.</div>"
* name.use = #official
* name.family = "Rivera"
* name.given = "Joel"
* telecom.system = #phone
* telecom.value = "+63-917-555-0155"

Instance: rs-practitioner-treatment
InstanceOf: PHCorePractitioner
Usage: #example
Title: "Example Treatment Officer"
Description: "EMS treatment officer providing care during rs-example-encounter."
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Treatment Officer: Paramedic Lea Dominguez.</div>"
* name.use = #official
* name.family = "Dominguez"
* name.given = "Lea"
* telecom.system = #phone
* telecom.value = "+63-917-555-0190"
