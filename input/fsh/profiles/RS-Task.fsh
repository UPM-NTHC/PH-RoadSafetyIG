// Workflow Task for report receipt and delay tracking
Profile: RSTask
Parent: Task
Id: rs-task
Title: "RS Task"
Description: "Workflow tracking for report receipt, durations of delay, and sources of delays."
* ^version = "1.0.0"
* status 1..1 MS
* executionPeriod 0..1 MS
* note 0..* MS
* for 0..1 MS
* for only Reference(RSPatient)
* focus 0..1
* input 0..*
* output 0..*

//https://hl7.org/fhir/R4/task.html

Instance: rs-example-task
InstanceOf: RSTask
Usage: #example
Title: "Example RS Task"
Description: "Tracking refusal-to-admit follow-up for rs-example-patient including coordination timelines."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-task"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Task monitoring completion of refusal-to-admit follow-up actions for rs-example-patient.</div>"
* status = #in-progress
* intent = #plan
* for = Reference(rs-example-patient)
* focus = Reference(rs-example-service-request)
* executionPeriod.start = "2025-10-31T16:15:00+08:00"
* executionPeriod.end = "2025-10-31T18:45:00+08:00"
* owner = Reference(rs-practitioner-receivedby)
* note[0].text = "Coordinating ambulance standby while awaiting receiving facility confirmation."
