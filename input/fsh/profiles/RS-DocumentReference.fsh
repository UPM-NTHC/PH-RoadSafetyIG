Profile: RSDocumentReference
Parent: DocumentReference
Id: rs-document-reference
Title: "Road Safety DocumentReference (Evidence)"
Description: "Evidence and post-crash documentation linked to the incident (e.g., cause of crash, party at fault, incident management logs, CCTV, shape files)."
* ^version = "1.0.0"
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

/*

1. Resolve at bundle ✅
2. Define individual Profiles
3. Slices - see old jaylord work in 04.1 branch

*/