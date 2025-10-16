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
* requester 0..1 MS
* requester only Reference(PHCorePractitioner)
* code 1..1 MS
* code.coding 1..1
* code.coding.system = $SILPH
* code.coding.code = #refusal-to-admit
* code.coding.display = "Refusal to admit"
* code ^short = "Refusal to admit code"
* code ^definition = "Code identifying a refusal-to-admit service/request."
* subject 1..1 MS
* subject only Reference(RSPatient)
* encounter 0..1 MS
* encounter only Reference(RSEncounter)