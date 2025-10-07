Profile: RSTask
Parent: Task
Id: RS-task
Title: "Road Safety Task"
Description: "A profile for tasks related to road safety, tracking report forms and delays."
* ^url = "urn://example.com.ph/StructureDefinition/rs-task"
* ^version = "1.0.0"
* ^status = #draft

// ----------------------------
// Report Form Received
// Maps to Task.status
// ----------------------------
* status 1..1
* status ^short = "Report Form Status"
* status ^definition = "Indicates whether the report form has been received."
* status from TaskStatus (required)

// ----------------------------
// Duration of Delay
// Maps to Task.executionPeriod
// ----------------------------
* executionPeriod 0..1
* executionPeriod ^short = "Duration of delay"
* executionPeriod ^definition = "The period of delay in the completion of the task."

// ----------------------------
// Sources of Delays
// Maps to Task.note[Annotation.text]
// ----------------------------
* note 0..* MS
* note ^short = "Sources of delays"
* note ^definition = "Notes describing the sources of delays in task completion."
* note.text 1..1
* note.text ^short = "Sources of delays text"