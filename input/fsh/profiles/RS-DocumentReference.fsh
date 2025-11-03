Profile: RSDocumentReference
Parent: DocumentReference
Id: rs-document-reference
Title: "RS DocumentReference (Evidence)"
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

Instance: rs-example-documentreference
InstanceOf: RSDocumentReference
Usage: #example
Title: "Example RS DocumentReference"
Description: "Crash scene photograph for rs-example-patient captured during rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Crash scene photograph associated with rs-example-encounter for patient rs-example-patient.</div>"
* status = #current
* type.coding = http://loinc.org#18748-4 "Document image"
* subject = Reference(rs-example-patient)
* context.encounter = Reference(rs-example-encounter)
* content[0].attachment.url = "https://example.org/fhir/Binary/rs-crash-photo"
* content[0].attachment.contentType = #image/jpeg
* content[0].attachment.title = "Crash scene photograph"
* content[0].format = http://terminology.hl7.org/CodeSystem/formatcodes#urn:ihe:pcc:dsr:2016
