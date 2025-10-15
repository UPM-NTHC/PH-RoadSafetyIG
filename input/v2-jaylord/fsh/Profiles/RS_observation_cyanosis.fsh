Profile: ObservationCyanosis
Parent: Observation
Id: observation-cyanosis
Title: "Observation - Cyanosis"
Description: "Records the presence or absence of cyanosis observed in the patient."

* status 1..1 MS
* category 1..* MS
/* category = $observation-category#exam "Physical Exam" */
* code 1..1 MS
* code = $sct#271327008 "Cyanosis (observable entity)"
* subject 1..1 MS
* effective[x] 1..1 MS
/* valueCodeableConcept 1..1 MS
  * from YesNoUnknownVS (example) */
* performer 0..* MS
* performer only Reference(PHCorePractitioner)
