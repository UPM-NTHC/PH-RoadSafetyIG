Profile: RSDocumentReference
Parent: DocumentReference
Id: RS-Documentreference
Title: "Road Safety Document Reference"
Description: "A profile to capture documents related to road safety incidents in the Philippine context."

* status 1..1 MS
* type 0..1
* category 0..* 
* subject 0..1
* date 0..1
* author 0..* 
* custodian 0..1
* content 1..* 

// Report form received: digital or physical
* category 1..1 
* category from ReportFormReceivedVS (required)


// Documentation of traffic incident management
* relatesTo 0..* MS
* relatesTo.code 1..1
* relatesTo.code = #appends (exactly)
* relatesTo.target only Reference(DocumentReference)
* relatesTo.target ^short = "Reference to documentation of traffic incident management."

// Detailed road network shape files (actual file is still in content.attachment)
* content ^slicing.discriminator.type = #pattern
* content ^slicing.discriminator.path = "attachment.contentType"
* content ^slicing.rules = #open


// Slice for road network file
* content contains roadNetworkFile 0..1 MS and causeOfCrashFile 0..1 MS

// ----------------------------
// Road Network File Slice // Detailed road network shape files (actual file is still in content.attachment)
// ----------------------------
* content[roadNetworkFile].attachment 1..1 
* content[roadNetworkFile].attachment.contentType 1..1 MS
* content[roadNetworkFile].attachment.contentType from RoadNetworkFileTypeVS (required)
* content[roadNetworkFile].attachment.url 0..1 MS
* content[roadNetworkFile].attachment.data 0..1
* content[roadNetworkFile].attachment.title 0..1
* content[roadNetworkFile].attachment.title ^short = "Detailed road network shape file"

// ----------------------------
// Cause of Road Crash File Slice
// ----------------------------
* content[causeOfCrashFile].attachment 1..1 
* content[causeOfCrashFile].attachment.contentType 1..1 MS
* content[causeOfCrashFile].attachment.contentType from CauseOfCrashFileTypeVS (required)
* content[causeOfCrashFile].attachment.url 0..1 MS
* content[causeOfCrashFile].attachment.data 0..1
* content[causeOfCrashFile].attachment.title 0..1
* content[causeOfCrashFile].attachment.title ^short = "Document file describing cause of road crash"

// Link to the road crash encounter for context
* context.encounter 1..1 MS
* context.encounter only Reference(RSEncounter)

