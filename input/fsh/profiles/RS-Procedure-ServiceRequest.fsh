Profile: RSProcedure
Parent: PHCoreProcedure
Id: rs-procedure
Title: "Road Safety Procedure"
Description: "Procedures related to incident/report (e.g., coordination with receiving hospital, psychosocial support, interventions)."
* ^version = "1.0.0"
* status 1..1 MS
* code 0..1 MS
* subject 1..1 MS
* subject only Reference(RSPatient)
* encounter 0..1 MS
* encounter only Reference(RSEncounter)
* performer 0..* 
* performer.actor only Reference(PHCorePractitioner)
* note 0..* 

Profile: RSServiceRequest
Parent: ServiceRequest
Id: rs-service-request
Title: "Road Safety ServiceRequest"
Description: "Requests or records related to refusal to admit and related workflow signals."
* ^version = "1.0.0"
* status 1..1 MS
* occurrenceDateTime 0..1 MS
* supportingInfo 0..* MS
* supportingInfo only Reference(PHCoreOrganization or PHCorePractitioner)
* subject 1..1 MS
* subject only Reference(RSPatient)
* encounter 0..1 MS
* encounter only Reference(RSEncounter)
