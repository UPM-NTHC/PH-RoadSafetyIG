Profile: RSServiceRequest
Parent: ServiceRequest
Id: rs-service-request
Title: "RS ServiceRequest"
Description: "Requests or records related to refusal to admit and related workflow signals."
* ^version = "1.0.0"
* status 1..1 MS
* status = #revoked
* status ^short = "Refusal-to-admit request is revoked"
* status ^definition = "Indicates the refusal-to-admit request has been revoked in accordance with the run report form response."
* encounter 0..1 MS
* encounter only Reference(RSEncounter)
* encounter ^short = "Encounter linked to the refusal-to-admit workflow"
* encounter ^definition = "Reference to the encounter associated with the refusal-to-admit request as captured on the run report form."
* subject 1..1 MS
* subject only Reference(RSPatient)
* subject ^short = "Patient associated with the refusal-to-admit record"
* subject ^definition = "Identifies the patient involved in the encounter where refusal to admit was reported."
* occurrenceDateTime 0..1 MS
* occurrenceDateTime ^short = "Date of refusal-to-admit record"
* occurrenceDateTime ^definition = "Date recorded on the run report form when the refusal-to-admit decision was logged."
* supportingInfo 2..* MS
* supportingInfo ^short = "Context references for refusal-to-admit decision"
* supportingInfo ^definition = "Supporting references, including the hospital and physician noted on the run report form."
* supportingInfo ^slicing.discriminator.type = #profile
* supportingInfo ^slicing.discriminator.path = "$this.resolve()"
* supportingInfo ^slicing.rules = #open
* supportingInfo contains reportingOrganization 1..1 and contactPractitioner 1..1
* supportingInfo[reportingOrganization] only Reference(RSOrganization)
* supportingInfo[reportingOrganization] ^short = "Hospital noted on the run report form"
* supportingInfo[reportingOrganization] ^definition = "Reference to the organization (hospital) listed under 'Refusal to Admit - Hospital'."
* supportingInfo[contactPractitioner] only Reference(PHCorePractitioner)
* supportingInfo[contactPractitioner] ^short = "Physician noted on the run report form"
* supportingInfo[contactPractitioner] ^definition = "Reference to the practitioner listed under 'Refusal to Admit - Physician'."

Instance: rs-example-service-request
InstanceOf: RSServiceRequest
Usage: #example
Title: "Example RS ServiceRequest"
Description: "Refusal-to-admit notification raised for rs-example-patient during rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-service-request"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>ServiceRequest documenting refusal to admit for rs-example-patient with supporting organization and practitioner contacts.</div>"
* status = #revoked
* intent = #plan
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* occurrenceDateTime = "2025-10-31T16:10:00+08:00"
* supportingInfo[reportingOrganization] = Reference(rs-organization-single-ex)
* supportingInfo[contactPractitioner] = Reference(rs-practitioner-receivedby)
