Profile: RSTask
Parent: Task
Id: RS-task
Title: "Road Safety Task"
Description: "A profile for tasks related to road safety, tracking report forms and delays."

* ^version = "1.0.0"
// ----------------------------
// Report Form Received
// Maps to Task.status
// ----------------------------
* status 1..1
* status ^short = "Report Form Status"
* status ^definition = "Indicates whether the report form has been received."
* status from http://hl7.org/fhir/ValueSet/task-status (required)
// Duration of Delay
* executionPeriod 0..1
* executionPeriod ^short = "Duration of delay"
* executionPeriod ^definition = "The period of delay in the completion of the task."
// Sources of Delays
* note 0..* MS
* note ^short = "Sources of delays"
* note ^definition = "Notes describing the sources of delays in task completion."
* note.text 1..1
* note.text ^short = "Sources of delays text"