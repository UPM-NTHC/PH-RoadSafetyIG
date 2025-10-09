Profile: RSObservation
Parent: PHCoreObservation
Id: RS-Observation
Title: "Injury Observation"
Description: "Reusable Observation base for Road Safety. Use separate RSObservation instances for each MDS element. Reserve components for complex panels (e.g., BP) but do not predefine slices at base level."

* status 1..1
* category 0..* MS
* code 1..1
* subject only Reference(RSPatient)
* encounter only Reference(RSEncounter)
* effective[x] 0..1
* performer only Reference(PHCorePractitioner)

// Allow components, but no base slicing (bundles will specify)
* component 0..*

* note 0..*