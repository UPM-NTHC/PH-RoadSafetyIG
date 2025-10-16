// Workflow Task for report receipt and delay tracking
Profile: RSTask
Parent: Task
Id: rs-task
Title: "Road Safety Task"
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