Profile: RSServiceRequest
Parent: ServiceRequest
Id: rs-service-request
Title: "RS ServiceRequest"
Description: "Requests or records related to refusal to admit and related workflow signals."
* ^version = "1.0.0"
* status 1..1 MS
* occurrenceDateTime 0..1 MS
* supportingInfo 0..* MS
* supportingInfo only Reference(RSOrganization or PHCorePractitioner)
* requester 0..1 MS
* requester only Reference(PHCorePractitioner)
* code 1..1 MS
* code.coding 1..1
* code.coding.display = "Refusal to admit"
* code ^short = "Refusal to admit code"
* code ^definition = "Code identifying a refusal-to-admit service/request."
* subject 1..1 MS
* subject only Reference(RSPatient)
* encounter 0..1 MS
* encounter only Reference(RSEncounter)

// * to revisit

Instance: rs-example-service-request
InstanceOf: RSServiceRequest
Usage: #example
Title: "Example RS ServiceRequest"
Description: "Refusal-to-admit notification raised for rs-example-patient during rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-service-request"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>ServiceRequest documenting refusal to admit for rs-example-patient with supporting organization contact.</div>"
* status = #active
* intent = #order
* code.coding.system = "http://www.roadsafetyph.doh.gov.ph/CodeSystem/cs-silph"
* code.coding.code = "refusal-to-admit"
* code.coding.display = "Refusal to admit"
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* occurrenceDateTime = "2025-10-31T16:10:00+08:00"
* requester = Reference(rs-practitioner-teamlead)
* supportingInfo[0] = Reference(rs-organization-single-ex)
