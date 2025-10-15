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