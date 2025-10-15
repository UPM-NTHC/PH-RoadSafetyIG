Profile: RSDocumentReference
Parent: DocumentReference
Id: RS-Documentreference
Title: "Road Safety Document Reference"
Description: "A profile to capture documents related to road safety incidents in the Philippine context."

* ^version = "1.0.0"
* masterIdentifier and status and type and category and subject and content and date and author MS
* subject 1..
* type only CodeableConceptRS
* category only CodeableConceptRS
* securityLabel only CodeableConceptRS
* context.event only CodeableConceptRS
* context.practiceSetting only CodeableConceptRS
* subject only Reference(RSPatient) /*| PractitionerRole | Practiotioner | RelatedPerson  | Group | Device | Location | */
* author only Reference(PHCorePractitioner) /*| PractitionerRole | RelatedPerson  | Group | Device | Location | Organization */
* authenticator only Reference(PHCorePractitioner) /*| PractitionerRole | Organization */
* custodian only Reference(PHCoreOrganization)


* relatesTo.target only Reference(RSDocumentReference)
* relatesTo 0..* MS

* context.encounter only Reference(PHCoreEncounter) /*episode of care */
* context.sourcePatientInfo only Reference(RSPatient)

* category from LOINCDocumentClass (extensible)

* type from DocumentTypeVS (extensible) // Report form received: digital or non digital or hybrid
* type ^short = "Type of document - digital, non digital or hybrid"
* type ^definition = "A code that classifies the document in terms of its content or purpose, such as a report, summary, or form. This helps in identifying the nature of the document and its intended use."
* type ^comment = "This value set includes LOINC codes defined as Document Type (LP32888-7) and codes from a code system to specify if the document is digital, paper, or hybrid."

// Detailed road network shape files (actual file is still in content.attachment)
* content ^slicing.discriminator.type = #pattern
* content ^slicing.discriminator.path = "attachment.contentType"
* content ^slicing.rules = #open

* content contains 
    causeOfCrashFile 0..1 MS and
    partyatfaultFile 0..1 MS and
    trafficincidentFile 0..1 and 
    roadNetworkFile 0..1 MS and
    vehiclecondition 0..1

// ----------------------------
// Road Network File Slice // Detailed road network shape files (actual file is still in content.attachment)
// ----------------------------

* content[causeOfCrashFile].attachment 1..1 
* content[causeOfCrashFile].attachment.contentType 1..1 MS
* content[causeOfCrashFile].attachment.contentType from DocumentTypeVS (required) 
* content[causeOfCrashFile].attachment.url 0..1 MS
* content[causeOfCrashFile].attachment.data 0..1
* content[causeOfCrashFile].attachment.title 0..1
* content[causeOfCrashFile].attachment.title ^short = "Document file describing cause of road crash"


* content[partyatfaultFile].attachment 1..1 
* content[partyatfaultFile].attachment.contentType 1..1 MS
* content[partyatfaultFile].attachment.contentType from DocumentTypeVS (required) 
* content[partyatfaultFile].attachment.url 0..1 MS
* content[partyatfaultFile].attachment.data 0..1
* content[partyatfaultFile].attachment.title 0..1
* content[partyatfaultFile].attachment.title ^short = "Detailed road network shape file"

// ----------------------------
// Cause of Road Crash File Slice
// ----------------------------
* content[trafficincidentFile].attachment 1..1 
* content[trafficincidentFile].attachment.contentType 1..1 MS
* content[trafficincidentFile].attachment.contentType from DocumentTypeVS (required) 
* content[trafficincidentFile].attachment.url 0..1 MS
* content[trafficincidentFile].attachment.data 0..1
* content[trafficincidentFile].attachment.title 0..1
* content[trafficincidentFile].attachment.title ^short = "Document file describing cause of road crash"

* content[roadNetworkFile].attachment 1..1 
* content[roadNetworkFile].attachment.contentType 1..1 MS
* content[roadNetworkFile].attachment.contentType from DocumentTypeVS (required) 
* content[roadNetworkFile].attachment.url 0..1 MS
* content[roadNetworkFile].attachment.data 0..1
* content[roadNetworkFile].attachment.title 0..1
* content[roadNetworkFile].attachment.title ^short = "Detailed road network shape file"

* content[vehiclecondition].attachment 1..1 
* content[vehiclecondition].attachment.contentType 1..1 MS
* content[vehiclecondition].attachment.contentType from DocumentTypeVS (required) 
* content[vehiclecondition].attachment.url 0..1 MS
* content[vehiclecondition].attachment.data 0..1
* content[vehiclecondition].attachment.title 0..1
* content[vehiclecondition].attachment.title ^short = "Detailed road network shape file"

// Link to the road crash encounter for context
/* context.encounter 1..1 MS
* context.encounter only Reference(RSEncounter) */

