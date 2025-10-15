Profile: ObservationLevelOfConsciousness
Parent: PHCoreObservation
Id: observation-level-of-consciousness
Title: "Observation - Level of Consciousness"
Description: "Records the patient's level of consciousness observed during assessment."

* status 1..1 MS
* category 1..* MS
/* category = $observation-category#vital-signs "Vital Signs" */
* code 1..1 MS
* code = $sct#1104441000000105 "Level of consciousness (observable entity)"
* subject 1..1 MS
* subject only Reference(RSPatient)
* effective[x] 1..1 MS
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from LevelOfConsciousnessVS 
* performer 0..* MS
* performer only Reference(PHCorePractitioner or RSHospital)
