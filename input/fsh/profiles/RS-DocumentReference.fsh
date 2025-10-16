Profile: RSDocumentReference
Parent: DocumentReference
Id: rs-document-reference
Title: "Road Safety DocumentReference (Evidence)"
Description: "Evidence and post-crash documentation linked to the incident (e.g., cause of crash, party at fault, incident management logs, CCTV, shape files)."
* ^version = "1.0.0"
* ^short = "Evidence document reference"
* ^definition = "Reference to evidence or post-crash documentation related to an incident, such as reports, videos or files."
* ^comment = "Used to attach or reference documents serving as evidence for post-crash investigations."
* status 1..1 MS
* type 0..1 MS
* subject 0..1 MS
* subject only Reference(RSPatient)
* context.encounter 0..1 MS
* context.encounter only Reference(RSEncounter)
* content 1..* MS
* content.attachment.url 1..1 MS
* content.attachment.url ^short = "Document URL"
* content.format 0..1

