Profile: ObservationGCS
Parent: Observation
Id: observation-gcs
Title: "Observation - Glasgow Coma Scale"
Description: "Assessment of consciousness using the Glasgow Coma Scale."

* status 1..1 MS
* category 1..* MS
/* category = $observation-category#vital-signs "Vital Signs" */
* code 1..1 MS
* code = $loinc#9269-2 "Glasgow coma score total"
* subject 1..1 MS
* subject only Reference(RSPatient)
* effective[x] 1..1 MS
* valueQuantity 1..1 MS
  * value ^short = "Total GCS score (3–15)"
* hasMember 0..*
/* hasMember only Reference(ObservationEyeResponse or ObservationVerbalResponse or ObservationMotorResponse) */
* performer 0..* MS
* performer only Reference(PHCorePractitioner)
