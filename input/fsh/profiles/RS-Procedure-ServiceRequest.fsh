Profile: RSProcedure
Parent: PHCoreProcedure
Id: RS-Procedure
Title: "Road Safety Procedure"
Description: "Procedures related to incident/report (e.g., coordination with receiving hospital, psychosocial support, interventions)."
* ^version = "1.0.0"
* status 1..1 MS
* code 0..1 MS
* subject 1..1 MS
* subject only Reference(RS-Patient or PHCorePatient)
* encounter 0..1 MS
* encounter only Reference(RS-Encounter or PHCoreEncounter)
* performer 0..* 
* performer.actor only Reference(PHCorePractitioner or PHCoreOrganization or PractitionerRole)
* note 0..* 

Profile: RSServiceRequest
Parent: ServiceRequest
Id: RS-ServiceRequest
Title: "Road Safety ServiceRequest"
Description: "Requests or records related to refusal to admit and related workflow signals."
* ^version = "1.0.0"
* status 1..1 MS
* occurrenceDateTime 0..1 MS
* supportingInfo 0..* MS
* supportingInfo only Reference(PHCoreOrganization or PHCorePractitioner)
* subject 1..1 MS
* subject only Reference(RS-Patient or PHCorePatient)
* encounter 0..1 MS
* encounter only Reference(RS-Encounter or PHCoreEncounter)
