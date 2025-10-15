Profile: RSServiceRequest
Parent: ServiceRequest
Id: RS-Servicerequest
Title: "Refusal to Admit Service Request"
Description: "Profile for recording refusal to admit a patient."
//Refusal to admit a patient to a healthcare facility, including details of the hospital and physician involved.
* status = #revoked
* encounter 1..1 MS
* subject only Reference(RSPatient)
// Slicing supportingInfo
* supportingInfo ^slicing.discriminator.type = #profile
* supportingInfo ^slicing.discriminator.path = "resolve()"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false

// Hospital
* supportingInfo contains hospital 0..1 
* supportingInfo[hospital] only Reference(PHCoreOrganization)
* supportingInfo[hospital] ^short = "Hospital that refused admission"

// Physician
* supportingInfo contains physician 0..1 
* supportingInfo[physician] only Reference(PHCorePractitioner)
* supportingInfo[physician] ^short = "Physician involved in refusal"

// Date and time of refusal
* occurrenceDateTime 1..1 
