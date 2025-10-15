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
* supportingInfo only Reference(RSHealthcareService or RSOrganization or PHCoreOrganization or PHCorePractitioner)
* subject 1..1 MS
* subject only Reference(RSPatient)
* encounter 0..1 MS
* encounter only Reference(RSEncounter)

// Workflow Task for report receipt / delays documentation
Profile: RSTask
Parent: Task
Id: rs-task
Title: "Road Safety Task"
Description: "Workflow tracking for report receipt, durations of delay, and sources of delays."
* ^version = "1.0.0"
* status 1..1 MS
* executionPeriod 0..1 MS
* note 0..* MS
* for 0..1 MS
* for only Reference(RSPatient)
* focus 0..1
* input 0..*
* output 0..*
