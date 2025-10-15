Profile: ObservationPupils
Parent: PHCoreObservation
Id: observation-pupils
Title: "Observation - Pupils"
Description: "Observation of pupil size and reactivity."

* status 1..1 MS
* category 1..* MS
/* category = $observation-category#exam "Physical Exam" */
* code 1..1 MS
* code = $sct#30186005 "Pupillary reflex (observable entity)"
* subject 1..1 MS
* subject only Reference(RSPatient)
* effective[x] 1..1 MS
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from PupilReactionVS 
* performer 0..* MS
* performer only Reference(PHCorePractitioner)
